import 'dart:developer';

import '../meta/controller/meta_respository.dart';
import '../source/data_source.dart';
import 'data_query.dart';

class LocalQuery<T extends Object> extends DataQuery<T> {
  LocalQuery(
    DataSource<T> source,
    String table,
  ) : super(source, table);

  @override
  Future<List<String>> browse() async {
    return MetaRepository().query().browse(table);
  }

  @override
  Future<T> read(String id) async {
    if (await readable(id) == false) {
      return null as T;
    }

    return await source.collect().then((collected) async {
      return collected[id] as T;
    });
  }

  @override
  Future<void> edit(String id, T data) async {
    try {
      await MetaRepository().query().edit(id, table);

      await source.connect().then((connection) async {
        await connection.put(id, source.encode(data));
      });
    } catch (e) {
      log('$LocalQuery' '.edit: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    await MetaRepository().query().delete(id);

    await source.connect().then((connection) async {
      await connection.delete(id);
    });
  }

  @override
  Future<T> get latest async {
    return await browse().then((ids) async {
      final metas = await Future.wait(
        ids.map((id) => MetaRepository().query().read(id)).toList(),
      );

      metas.sort((a, b) => a.updated.compareTo(b.updated));

      return read(metas.last.id);
    });
  }

  @override
  Future<bool> readable(String id) async {
    return await MetaRepository().query().readable(id);
  }
}
