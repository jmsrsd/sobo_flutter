import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_data.freezed.dart';
part 'note_data.g.dart';

@freezed
class NoteData with _$NoteData {
  factory NoteData({
    @Default('') String id,
    @Default('') String title,
    @Default('') String content,
  }) = _NoteData;

  factory NoteData.fromJson(Map<String, dynamic> json) =>
      _$NoteDataFromJson(json);
}
