// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LineModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineModel _$LineModelFromJson(Map<String, dynamic> json) {
  return _LineModel.fromJson(json);
}

/// @nodoc
mixin _$LineModel {
  bool get isSelected => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineModelCopyWith<LineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineModelCopyWith<$Res> {
  factory $LineModelCopyWith(LineModel value, $Res Function(LineModel) then) =
      _$LineModelCopyWithImpl<$Res, LineModel>;
  @useResult
  $Res call({bool isSelected, String name});
}

/// @nodoc
class _$LineModelCopyWithImpl<$Res, $Val extends LineModel>
    implements $LineModelCopyWith<$Res> {
  _$LineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LineModelCopyWith<$Res> implements $LineModelCopyWith<$Res> {
  factory _$$_LineModelCopyWith(
          _$_LineModel value, $Res Function(_$_LineModel) then) =
      __$$_LineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, String name});
}

/// @nodoc
class __$$_LineModelCopyWithImpl<$Res>
    extends _$LineModelCopyWithImpl<$Res, _$_LineModel>
    implements _$$_LineModelCopyWith<$Res> {
  __$$_LineModelCopyWithImpl(
      _$_LineModel _value, $Res Function(_$_LineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? name = null,
  }) {
    return _then(_$_LineModel(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineModel implements _LineModel {
  const _$_LineModel({this.isSelected = false, required this.name});

  factory _$_LineModel.fromJson(Map<String, dynamic> json) =>
      _$$_LineModelFromJson(json);

  @override
  @JsonKey()
  final bool isSelected;
  @override
  final String name;

  @override
  String toString() {
    return 'LineModel(isSelected: $isSelected, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineModel &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSelected, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineModelCopyWith<_$_LineModel> get copyWith =>
      __$$_LineModelCopyWithImpl<_$_LineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineModelToJson(
      this,
    );
  }
}

abstract class _LineModel implements LineModel {
  const factory _LineModel(
      {final bool isSelected, required final String name}) = _$_LineModel;

  factory _LineModel.fromJson(Map<String, dynamic> json) =
      _$_LineModel.fromJson;

  @override
  bool get isSelected;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LineModelCopyWith<_$_LineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
