// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DataModelA.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubwayModel _$SubwayModelFromJson(Map<String, dynamic> json) {
  return _SubwayModel.fromJson(json);
}

/// @nodoc
mixin _$SubwayModel {
  String get name => throw _privateConstructorUsedError;
  String get engname => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<String> get line => throw _privateConstructorUsedError;
  num? get km => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubwayModelCopyWith<SubwayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubwayModelCopyWith<$Res> {
  factory $SubwayModelCopyWith(
          SubwayModel value, $Res Function(SubwayModel) then) =
      _$SubwayModelCopyWithImpl<$Res, SubwayModel>;
  @useResult
  $Res call(
      {String name,
      String engname,
      double lat,
      double lng,
      List<String> line,
      num? km});
}

/// @nodoc
class _$SubwayModelCopyWithImpl<$Res, $Val extends SubwayModel>
    implements $SubwayModelCopyWith<$Res> {
  _$SubwayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engname = null,
    Object? lat = null,
    Object? lng = null,
    Object? line = null,
    Object? km = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engname: null == engname
          ? _value.engname
          : engname // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>,
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubwayModelCopyWith<$Res>
    implements $SubwayModelCopyWith<$Res> {
  factory _$$_SubwayModelCopyWith(
          _$_SubwayModel value, $Res Function(_$_SubwayModel) then) =
      __$$_SubwayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String engname,
      double lat,
      double lng,
      List<String> line,
      num? km});
}

/// @nodoc
class __$$_SubwayModelCopyWithImpl<$Res>
    extends _$SubwayModelCopyWithImpl<$Res, _$_SubwayModel>
    implements _$$_SubwayModelCopyWith<$Res> {
  __$$_SubwayModelCopyWithImpl(
      _$_SubwayModel _value, $Res Function(_$_SubwayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? engname = null,
    Object? lat = null,
    Object? lng = null,
    Object? line = null,
    Object? km = freezed,
  }) {
    return _then(_$_SubwayModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      engname: null == engname
          ? _value.engname
          : engname // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      line: null == line
          ? _value._line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>,
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubwayModel implements _SubwayModel {
  const _$_SubwayModel(
      {required this.name,
      required this.engname,
      required this.lat,
      required this.lng,
      required final List<String> line,
      this.km = 0.0})
      : _line = line;

  factory _$_SubwayModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubwayModelFromJson(json);

  @override
  final String name;
  @override
  final String engname;
  @override
  final double lat;
  @override
  final double lng;
  final List<String> _line;
  @override
  List<String> get line {
    if (_line is EqualUnmodifiableListView) return _line;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_line);
  }

  @override
  @JsonKey()
  final num? km;

  @override
  String toString() {
    return 'SubwayModel(name: $name, engname: $engname, lat: $lat, lng: $lng, line: $line, km: $km)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubwayModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.engname, engname) || other.engname == engname) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._line, _line) &&
            (identical(other.km, km) || other.km == km));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, engname, lat, lng,
      const DeepCollectionEquality().hash(_line), km);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubwayModelCopyWith<_$_SubwayModel> get copyWith =>
      __$$_SubwayModelCopyWithImpl<_$_SubwayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubwayModelToJson(
      this,
    );
  }
}

abstract class _SubwayModel implements SubwayModel {
  const factory _SubwayModel(
      {required final String name,
      required final String engname,
      required final double lat,
      required final double lng,
      required final List<String> line,
      final num? km}) = _$_SubwayModel;

  factory _SubwayModel.fromJson(Map<String, dynamic> json) =
      _$_SubwayModel.fromJson;

  @override
  String get name;
  @override
  String get engname;
  @override
  double get lat;
  @override
  double get lng;
  @override
  List<String> get line;
  @override
  num? get km;
  @override
  @JsonKey(ignore: true)
  _$$_SubwayModelCopyWith<_$_SubwayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
