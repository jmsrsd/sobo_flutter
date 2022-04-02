import '../source/data_source.dart';

import '../meta/model/meta_data.dart';
import '../meta/controller/meta_data_query.dart';

class MetaQuery {
  final DataSource<MetaData> source;

  MetaQuery(this.source);

  MetaDataQuery data({required String of}) {
    final table = of;

    return MetaDataQuery(source, table);
  }

  Future<MetaData> get latest async {
    return await data(of: source.name).latest;
  }

  Future<List<String>> browse(String table) async {
    return await data(of: table).browse();
  }

  Future<bool> readable(String id) async {
    return await data(of: source.name).readable(id);
  }

  Future<MetaData> read(String id) async {
    return await data(of: source.name).read(id);
  }

  Future<void> edit(String id, String table) async {
    await data(of: table).edit(id, MetaData());
  }

  Future<void> delete(String id) async {
    await data(of: source.name).delete(id);
  }
}
