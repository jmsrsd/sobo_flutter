// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageData _$$_ImageDataFromJson(Map<String, dynamic> json) => _$_ImageData(
      id: json['id'] as String? ?? '',
      header: json['header'] as String? ?? 'data:image/jpeg;base64',
      body: json['body'] as String? ?? '',
    );

Map<String, dynamic> _$$_ImageDataToJson(_$_ImageData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'header': instance.header,
      'body': instance.body,
    };
