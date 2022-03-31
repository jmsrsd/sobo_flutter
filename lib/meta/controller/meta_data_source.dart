import 'dart:convert';

import '../../common/data/source/data_source.dart';
import '../model/meta_data.dart';

abstract class MetaDataSource extends DataSource<MetaData> {
  MetaDataSource() : super('meta');

  @override
  MetaData decode(String encoded) {
    try {
      return MetaData.fromJson(jsonDecode(encoded));
    } catch (e) {
      return MetaData();
    }
  }

  @override
  String encode(MetaData decoded) {
    try {
      return jsonEncode(decoded.toJson());
    } catch (e) {
      return jsonEncode({});
    }
  }
}
