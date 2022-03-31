// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteData _$NoteDataFromJson(Map<String, dynamic> json) {
  return _NoteData.fromJson(json);
}

/// @nodoc
class _$NoteDataTearOff {
  const _$NoteDataTearOff();

  _NoteData call({String id = '', String title = '', String content = ''}) {
    return _NoteData(
      id: id,
      title: title,
      content: content,
    );
  }

  NoteData fromJson(Map<String, Object?> json) {
    return NoteData.fromJson(json);
  }
}

/// @nodoc
const $NoteData = _$NoteDataTearOff();

/// @nodoc
mixin _$NoteData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDataCopyWith<NoteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDataCopyWith<$Res> {
  factory $NoteDataCopyWith(NoteData value, $Res Function(NoteData) then) =
      _$NoteDataCopyWithImpl<$Res>;
  $Res call({String id, String title, String content});
}

/// @nodoc
class _$NoteDataCopyWithImpl<$Res> implements $NoteDataCopyWith<$Res> {
  _$NoteDataCopyWithImpl(this._value, this._then);

  final NoteData _value;
  // ignore: unused_field
  final $Res Function(NoteData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteDataCopyWith<$Res> implements $NoteDataCopyWith<$Res> {
  factory _$NoteDataCopyWith(_NoteData value, $Res Function(_NoteData) then) =
      __$NoteDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String content});
}

/// @nodoc
class __$NoteDataCopyWithImpl<$Res> extends _$NoteDataCopyWithImpl<$Res>
    implements _$NoteDataCopyWith<$Res> {
  __$NoteDataCopyWithImpl(_NoteData _value, $Res Function(_NoteData) _then)
      : super(_value, (v) => _then(v as _NoteData));

  @override
  _NoteData get _value => super._value as _NoteData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_NoteData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteData with DiagnosticableTreeMixin implements _NoteData {
  _$_NoteData({this.id = '', this.title = '', this.content = ''});

  factory _$_NoteData.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDataFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteData(id: $id, title: $title, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$NoteDataCopyWith<_NoteData> get copyWith =>
      __$NoteDataCopyWithImpl<_NoteData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDataToJson(this);
  }
}

abstract class _NoteData implements NoteData {
  factory _NoteData({String id, String title, String content}) = _$_NoteData;

  factory _NoteData.fromJson(Map<String, dynamic> json) = _$_NoteData.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$NoteDataCopyWith<_NoteData> get copyWith =>
      throw _privateConstructorUsedError;
}
