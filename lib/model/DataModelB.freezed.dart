// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DataModelB.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineCode _$LineCodeFromJson(Map<String, dynamic> json) {
  return _LineCode.fromJson(json);
}

/// @nodoc
mixin _$LineCode {
  String get lineStringA => throw _privateConstructorUsedError;
  String get lineStringB => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineCodeCopyWith<LineCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineCodeCopyWith<$Res> {
  factory $LineCodeCopyWith(LineCode value, $Res Function(LineCode) then) =
      _$LineCodeCopyWithImpl<$Res, LineCode>;
  @useResult
  $Res call({String lineStringA, String lineStringB, String number});
}

/// @nodoc
class _$LineCodeCopyWithImpl<$Res, $Val extends LineCode>
    implements $LineCodeCopyWith<$Res> {
  _$LineCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineStringA = null,
    Object? lineStringB = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      lineStringA: null == lineStringA
          ? _value.lineStringA
          : lineStringA // ignore: cast_nullable_to_non_nullable
              as String,
      lineStringB: null == lineStringB
          ? _value.lineStringB
          : lineStringB // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LineCodeCopyWith<$Res> implements $LineCodeCopyWith<$Res> {
  factory _$$_LineCodeCopyWith(
          _$_LineCode value, $Res Function(_$_LineCode) then) =
      __$$_LineCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lineStringA, String lineStringB, String number});
}

/// @nodoc
class __$$_LineCodeCopyWithImpl<$Res>
    extends _$LineCodeCopyWithImpl<$Res, _$_LineCode>
    implements _$$_LineCodeCopyWith<$Res> {
  __$$_LineCodeCopyWithImpl(
      _$_LineCode _value, $Res Function(_$_LineCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineStringA = null,
    Object? lineStringB = null,
    Object? number = null,
  }) {
    return _then(_$_LineCode(
      lineStringA: null == lineStringA
          ? _value.lineStringA
          : lineStringA // ignore: cast_nullable_to_non_nullable
              as String,
      lineStringB: null == lineStringB
          ? _value.lineStringB
          : lineStringB // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineCode implements _LineCode {
  const _$_LineCode(
      {required this.lineStringA,
      required this.lineStringB,
      required this.number});

  factory _$_LineCode.fromJson(Map<String, dynamic> json) =>
      _$$_LineCodeFromJson(json);

  @override
  final String lineStringA;
  @override
  final String lineStringB;
  @override
  final String number;

  @override
  String toString() {
    return 'LineCode(lineStringA: $lineStringA, lineStringB: $lineStringB, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineCode &&
            (identical(other.lineStringA, lineStringA) ||
                other.lineStringA == lineStringA) &&
            (identical(other.lineStringB, lineStringB) ||
                other.lineStringB == lineStringB) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lineStringA, lineStringB, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineCodeCopyWith<_$_LineCode> get copyWith =>
      __$$_LineCodeCopyWithImpl<_$_LineCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineCodeToJson(
      this,
    );
  }
}

abstract class _LineCode implements LineCode {
  const factory _LineCode(
      {required final String lineStringA,
      required final String lineStringB,
      required final String number}) = _$_LineCode;

  factory _LineCode.fromJson(Map<String, dynamic> json) = _$_LineCode.fromJson;

  @override
  String get lineStringA;
  @override
  String get lineStringB;
  @override
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$_LineCodeCopyWith<_$_LineCode> get copyWith =>
      throw _privateConstructorUsedError;
}
