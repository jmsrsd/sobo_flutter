import '../source/data_source.dart';

abstract class DataQuery<T extends Object> {
  final String table;
  final DataSource<T> source;

  DataQuery(this.source, this.table);

  Future<T> get latest;

  Future<List<String>> browse();

  Future<bool> readable(String id);

  Future<T> read(String id);

  Future<void> edit(String id, T data);

  Future<void> delete(String id);
}
