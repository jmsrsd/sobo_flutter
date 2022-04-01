import '../../../singleton.dart';
import '../model/meta_data.dart';
import 'meta_data_query.dart';
import 'meta_data_source.dart';

class MetaRepository extends MetaDataSource {
  MetaRepository._();

  factory MetaRepository() {
    return Singleton<MetaRepository>().get(() {
      return MetaRepository._();
    });
  }

  MetaDataQuery query(String table) {
    return MetaDataQuery(this, table);
  }

  Future<MetaData> get latest async {
    return await query(name).latest;
  }

  Future<List<String>> browse(String table) async {
    return await query(table).browse();
  }

  Future<bool> readable(String id) async {
    return await query(name).readable(id);
  }

  Future<MetaData> read(String id) async {
    return await query(name).read(id);
  }

  Future<void> edit(String id, String table) async {
    await query(table).edit(id, MetaData());
  }

  Future<void> delete(String id) async {
    await query(name).delete(id);
  }
}
