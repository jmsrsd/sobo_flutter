import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_data.freezed.dart';
part 'image_data.g.dart';

@freezed
class ImageData with _$ImageData {
  factory ImageData({
    @Default('') String id,
    @Default('data:image/jpeg;base64') String header,
    @Default('') String body,
  }) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);
}
