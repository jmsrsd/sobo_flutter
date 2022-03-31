import 'package:hive_flutter/hive_flutter.dart';

abstract class DataSource<T extends Object> {
  final String name;

  DataSource(this.name);

  String encode(T decoded);

  T decode(String encoded);

  Future<Box<String>> connect() async {
    return await Hive.openBox<String>(name);
  }

  Future<Map<String, T>> collect() async {
    return await connect().then((box) async {
      return box.toMap().map((key, value) {
        return MapEntry('$key', decode(value));
      });
    });
  }
}
