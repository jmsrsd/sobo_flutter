// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
class _$MetaDataTearOff {
  const _$MetaDataTearOff();

  _MetaData call(
      {String id = '',
      String table = '',
      String created = '',
      String updated = ''}) {
    return _MetaData(
      id: id,
      table: table,
      created: created,
      updated: updated,
    );
  }

  MetaData fromJson(Map<String, Object?> json) {
    return MetaData.fromJson(json);
  }
}

/// @nodoc
const $MetaData = _$MetaDataTearOff();

/// @nodoc
mixin _$MetaData {
  String get id => throw _privateConstructorUsedError;
  String get table => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res>;
  $Res call({String id, String table, String created, String updated});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res> implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  final MetaData _value;
  // ignore: unused_field
  final $Res Function(MetaData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? table = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$MetaDataCopyWith(_MetaData value, $Res Function(_MetaData) then) =
      __$MetaDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String table, String created, String updated});
}

/// @nodoc
class __$MetaDataCopyWithImpl<$Res> extends _$MetaDataCopyWithImpl<$Res>
    implements _$MetaDataCopyWith<$Res> {
  __$MetaDataCopyWithImpl(_MetaData _value, $Res Function(_MetaData) _then)
      : super(_value, (v) => _then(v as _MetaData));

  @override
  _MetaData get _value => super._value as _MetaData;

  @override
  $Res call({
    Object? id = freezed,
    Object? table = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_MetaData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData with DiagnosticableTreeMixin implements _MetaData {
  _$_MetaData(
      {this.id = '', this.table = '', this.created = '', this.updated = ''});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String table;
  @JsonKey()
  @override
  final String created;
  @JsonKey()
  @override
  final String updated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetaData(id: $id, table: $table, created: $created, updated: $updated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetaData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('table', table))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('updated', updated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.table, table) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.updated, updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(table),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(updated));

  @JsonKey(ignore: true)
  @override
  _$MetaDataCopyWith<_MetaData> get copyWith =>
      __$MetaDataCopyWithImpl<_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(this);
  }
}

abstract class _MetaData implements MetaData {
  factory _MetaData({String id, String table, String created, String updated}) =
      _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  String get id;
  @override
  String get table;
  @override
  String get created;
  @override
  String get updated;
  @override
  @JsonKey(ignore: true)
  _$MetaDataCopyWith<_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
