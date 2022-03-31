// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
class _$ImageDataTearOff {
  const _$ImageDataTearOff();

  _ImageData call(
      {String id = '',
      String header = 'data:image/jpeg;base64',
      String body = ''}) {
    return _ImageData(
      id: id,
      header: header,
      body: body,
    );
  }

  ImageData fromJson(Map<String, Object?> json) {
    return ImageData.fromJson(json);
  }
}

/// @nodoc
const $ImageData = _$ImageDataTearOff();

/// @nodoc
mixin _$ImageData {
  String get id => throw _privateConstructorUsedError;
  String get header => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res>;
  $Res call({String id, String header, String body});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res> implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  final ImageData _value;
  // ignore: unused_field
  final $Res Function(ImageData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$ImageDataCopyWith(
          _ImageData value, $Res Function(_ImageData) then) =
      __$ImageDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String header, String body});
}

/// @nodoc
class __$ImageDataCopyWithImpl<$Res> extends _$ImageDataCopyWithImpl<$Res>
    implements _$ImageDataCopyWith<$Res> {
  __$ImageDataCopyWithImpl(_ImageData _value, $Res Function(_ImageData) _then)
      : super(_value, (v) => _then(v as _ImageData));

  @override
  _ImageData get _value => super._value as _ImageData;

  @override
  $Res call({
    Object? id = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_ImageData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageData with DiagnosticableTreeMixin implements _ImageData {
  _$_ImageData(
      {this.id = '', this.header = 'data:image/jpeg;base64', this.body = ''});

  factory _$_ImageData.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDataFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String header;
  @JsonKey()
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageData(id: $id, header: $header, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$ImageDataCopyWith<_ImageData> get copyWith =>
      __$ImageDataCopyWithImpl<_ImageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDataToJson(this);
  }
}

abstract class _ImageData implements ImageData {
  factory _ImageData({String id, String header, String body}) = _$_ImageData;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$_ImageData.fromJson;

  @override
  String get id;
  @override
  String get header;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$ImageDataCopyWith<_ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}
