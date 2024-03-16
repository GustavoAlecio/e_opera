// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Vehicle {
  String get vehicleCode => throw _privateConstructorUsedError;
  String get vehicleName => throw _privateConstructorUsedError;
  String get vehiclePlate => throw _privateConstructorUsedError;
  String get driverVehicle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {String vehicleCode,
      String vehicleName,
      String vehiclePlate,
      String driverVehicle});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleCode = null,
    Object? vehicleName = null,
    Object? vehiclePlate = null,
    Object? driverVehicle = null,
  }) {
    return _then(_value.copyWith(
      vehicleCode: null == vehicleCode
          ? _value.vehicleCode
          : vehicleCode // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
      driverVehicle: null == driverVehicle
          ? _value.driverVehicle
          : driverVehicle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleImplCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$VehicleImplCopyWith(
          _$VehicleImpl value, $Res Function(_$VehicleImpl) then) =
      __$$VehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String vehicleCode,
      String vehicleName,
      String vehiclePlate,
      String driverVehicle});
}

/// @nodoc
class __$$VehicleImplCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$VehicleImpl>
    implements _$$VehicleImplCopyWith<$Res> {
  __$$VehicleImplCopyWithImpl(
      _$VehicleImpl _value, $Res Function(_$VehicleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleCode = null,
    Object? vehicleName = null,
    Object? vehiclePlate = null,
    Object? driverVehicle = null,
  }) {
    return _then(_$VehicleImpl(
      vehicleCode: null == vehicleCode
          ? _value.vehicleCode
          : vehicleCode // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
      driverVehicle: null == driverVehicle
          ? _value.driverVehicle
          : driverVehicle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleImpl extends _Vehicle {
  _$VehicleImpl(
      {this.vehicleCode = '',
      this.vehicleName = '',
      this.vehiclePlate = '',
      this.driverVehicle = ''})
      : super._();

  @override
  @JsonKey()
  final String vehicleCode;
  @override
  @JsonKey()
  final String vehicleName;
  @override
  @JsonKey()
  final String vehiclePlate;
  @override
  @JsonKey()
  final String driverVehicle;

  @override
  String toString() {
    return 'Vehicle(vehicleCode: $vehicleCode, vehicleName: $vehicleName, vehiclePlate: $vehiclePlate, driverVehicle: $driverVehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImpl &&
            (identical(other.vehicleCode, vehicleCode) ||
                other.vehicleCode == vehicleCode) &&
            (identical(other.vehicleName, vehicleName) ||
                other.vehicleName == vehicleName) &&
            (identical(other.vehiclePlate, vehiclePlate) ||
                other.vehiclePlate == vehiclePlate) &&
            (identical(other.driverVehicle, driverVehicle) ||
                other.driverVehicle == driverVehicle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, vehicleCode, vehicleName, vehiclePlate, driverVehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      __$$VehicleImplCopyWithImpl<_$VehicleImpl>(this, _$identity);
}

abstract class _Vehicle extends Vehicle {
  factory _Vehicle(
      {final String vehicleCode,
      final String vehicleName,
      final String vehiclePlate,
      final String driverVehicle}) = _$VehicleImpl;
  _Vehicle._() : super._();

  @override
  String get vehicleCode;
  @override
  String get vehicleName;
  @override
  String get vehiclePlate;
  @override
  String get driverVehicle;
  @override
  @JsonKey(ignore: true)
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
