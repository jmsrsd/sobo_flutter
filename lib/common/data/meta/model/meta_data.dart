import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data.freezed.dart';
part 'meta_data.g.dart';

@freezed
class MetaData with _$MetaData {
  factory MetaData({
    @Default('') String id,
    @Default('') String table,
    @Default('') String created,
    @Default('') String updated,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}
