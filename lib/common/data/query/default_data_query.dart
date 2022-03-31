import 'dart:developer';

import '../../../meta/controller/meta_respository.dart';
import '../../../meta/model/meta_data.dart';
import '../source/data_source.dart';
import 'data_query.dart';

class DefaultDataQuery<T extends Object> extends DataQuery<T> {
  DefaultDataQuery(
    DataSource<T> source,
    String table,
  ) : super(source, table);

  @override
  Future<List<String>> browse() async {
    return MetaRepository().browse(table);
  }

  @override
  Future<T> read(String id) async {
    if (await MetaRepository().readable(id) == false) {
      throw Exception('$id is not readable');
    }

    final collected = await source.collect();
    final result = collected[id];
    return result!;
  }

  @override
  Future<void> edit(String id, T data) async {
    try {
      await MetaRepository().edit(id, table);

      await source.connect().then((connection) async {
        await connection.put(id, source.encode(data));
      });
    } catch (e) {
      log('$DefaultDataQuery.edit: $e');
    }
  }

  @override
  Future<void> delete(String id) async {
    await MetaRepository().delete(id);

    await source.connect().then((connection) async {
      await connection.delete(id);
    });
  }

  @override
  Future<T> get latest async {
    return await MetaRepository().browse(table).then((ids) async {
      final metas = <MetaData>[];

      for (final id in ids) {
        metas.add(await MetaRepository().read(id));
      }

      metas.sort((a, b) => a.updated.compareTo(b.updated));

      return read(metas.last.id);
    });
  }

  @override
  Future<bool> readable(String id) async {
    return await MetaRepository().readable(id);
  }
}
