// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Driver {
  String get driverCode => throw _privateConstructorUsedError;
  String get driverName => throw _privateConstructorUsedError;
  String get driverReducedName => throw _privateConstructorUsedError;
  String get driverCpf => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {String driverCode,
      String driverName,
      String driverReducedName,
      String driverCpf});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverCode = null,
    Object? driverName = null,
    Object? driverReducedName = null,
    Object? driverCpf = null,
  }) {
    return _then(_value.copyWith(
      driverCode: null == driverCode
          ? _value.driverCode
          : driverCode // ignore: cast_nullable_to_non_nullable
              as String,
      driverName: null == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverReducedName: null == driverReducedName
          ? _value.driverReducedName
          : driverReducedName // ignore: cast_nullable_to_non_nullable
              as String,
      driverCpf: null == driverCpf
          ? _value.driverCpf
          : driverCpf // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverImplCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$DriverImplCopyWith(
          _$DriverImpl value, $Res Function(_$DriverImpl) then) =
      __$$DriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String driverCode,
      String driverName,
      String driverReducedName,
      String driverCpf});
}

/// @nodoc
class __$$DriverImplCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$DriverImpl>
    implements _$$DriverImplCopyWith<$Res> {
  __$$DriverImplCopyWithImpl(
      _$DriverImpl _value, $Res Function(_$DriverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverCode = null,
    Object? driverName = null,
    Object? driverReducedName = null,
    Object? driverCpf = null,
  }) {
    return _then(_$DriverImpl(
      driverCode: null == driverCode
          ? _value.driverCode
          : driverCode // ignore: cast_nullable_to_non_nullable
              as String,
      driverName: null == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverReducedName: null == driverReducedName
          ? _value.driverReducedName
          : driverReducedName // ignore: cast_nullable_to_non_nullable
              as String,
      driverCpf: null == driverCpf
          ? _value.driverCpf
          : driverCpf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DriverImpl extends _Driver {
  _$DriverImpl(
      {this.driverCode = '',
      this.driverName = '',
      this.driverReducedName = '',
      this.driverCpf = ''})
      : super._();

  @override
  @JsonKey()
  final String driverCode;
  @override
  @JsonKey()
  final String driverName;
  @override
  @JsonKey()
  final String driverReducedName;
  @override
  @JsonKey()
  final String driverCpf;

  @override
  String toString() {
    return 'Driver(driverCode: $driverCode, driverName: $driverName, driverReducedName: $driverReducedName, driverCpf: $driverCpf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverImpl &&
            (identical(other.driverCode, driverCode) ||
                other.driverCode == driverCode) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverReducedName, driverReducedName) ||
                other.driverReducedName == driverReducedName) &&
            (identical(other.driverCpf, driverCpf) ||
                other.driverCpf == driverCpf));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, driverCode, driverName, driverReducedName, driverCpf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      __$$DriverImplCopyWithImpl<_$DriverImpl>(this, _$identity);
}

abstract class _Driver extends Driver {
  factory _Driver(
      {final String driverCode,
      final String driverName,
      final String driverReducedName,
      final String driverCpf}) = _$DriverImpl;
  _Driver._() : super._();

  @override
  String get driverCode;
  @override
  String get driverName;
  @override
  String get driverReducedName;
  @override
  String get driverCpf;
  @override
  @JsonKey(ignore: true)
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
