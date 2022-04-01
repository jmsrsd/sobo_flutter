import '../../query/data_query.dart';
import '../../source/data_source.dart';
import '../model/meta_data.dart';

class MetaDataQuery extends DataQuery<MetaData> {
  MetaDataQuery(
    DataSource<MetaData> source,
    String table,
  ) : super(source, table);

  @override
  Future<List<String>> browse() async {
    return await source.collect().then((collected) async {
      return collected.values
          .where((element) => element.table == table)
          .map((e) => e.id)
          .toList();
    });
  }

  @override
  Future<void> delete(String id) async {
    await source.connect().then((connection) async {
      await connection.delete(id);
    });
  }

  @override
  Future<void> edit(String id, MetaData data) async {
    await source.collect().then((collected) async {
      final updated = DateTime.now().microsecondsSinceEpoch.toString();
      final decoded = (collected[id] ?? MetaData(created: updated)).copyWith(
        id: id,
        table: table,
        updated: updated,
      );

      await source.connect().then((connection) async {
        await connection.put(id, source.encode(decoded));
      });
    });
  }

  @override
  Future<MetaData> get latest async {
    return await source.collect().then((collected) async {
      final entries = collected.entries;

      final result = entries.map((e) => e.value).toList();
      result.sort((a, b) => a.updated.compareTo(b.updated));

      return result.isEmpty ? MetaData() : result.last;
    });
  }

  @override
  Future<MetaData> read(String id) async {
    return await source.collect().then((collected) async {
      return collected[id] ?? MetaData();
    });
  }

  @override
  Future<bool> readable(String id) async {
    return await source.collect().then((collected) async {
      return collected.containsKey(id);
    });
  }
}
