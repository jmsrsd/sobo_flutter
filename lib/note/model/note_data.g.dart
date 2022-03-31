// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteData _$$_NoteDataFromJson(Map<String, dynamic> json) => _$_NoteData(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$_NoteDataToJson(_$_NoteData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
