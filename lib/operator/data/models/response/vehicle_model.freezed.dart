// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  @HiveField(0)
  @JsonKey(name: 'codVeiculo')
  String get vehicleCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'motoristaVeiculo')
  String get driverVehicle => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'nomeVeiculo')
  String get vehicleName => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'placaVeiculo')
  String get vehiclePlate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res, VehicleModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codVeiculo') String vehicleCode,
      @HiveField(1) @JsonKey(name: 'motoristaVeiculo') String driverVehicle,
      @HiveField(2) @JsonKey(name: 'nomeVeiculo') String vehicleName,
      @HiveField(3) @JsonKey(name: 'placaVeiculo') String vehiclePlate});
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res, $Val extends VehicleModel>
    implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleCode = null,
    Object? driverVehicle = null,
    Object? vehicleName = null,
    Object? vehiclePlate = null,
  }) {
    return _then(_value.copyWith(
      vehicleCode: null == vehicleCode
          ? _value.vehicleCode
          : vehicleCode // ignore: cast_nullable_to_non_nullable
              as String,
      driverVehicle: null == driverVehicle
          ? _value.driverVehicle
          : driverVehicle // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleModelImplCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$VehicleModelImplCopyWith(
          _$VehicleModelImpl value, $Res Function(_$VehicleModelImpl) then) =
      __$$VehicleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codVeiculo') String vehicleCode,
      @HiveField(1) @JsonKey(name: 'motoristaVeiculo') String driverVehicle,
      @HiveField(2) @JsonKey(name: 'nomeVeiculo') String vehicleName,
      @HiveField(3) @JsonKey(name: 'placaVeiculo') String vehiclePlate});
}

/// @nodoc
class __$$VehicleModelImplCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res, _$VehicleModelImpl>
    implements _$$VehicleModelImplCopyWith<$Res> {
  __$$VehicleModelImplCopyWithImpl(
      _$VehicleModelImpl _value, $Res Function(_$VehicleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleCode = null,
    Object? driverVehicle = null,
    Object? vehicleName = null,
    Object? vehiclePlate = null,
  }) {
    return _then(_$VehicleModelImpl(
      vehicleCode: null == vehicleCode
          ? _value.vehicleCode
          : vehicleCode // ignore: cast_nullable_to_non_nullable
              as String,
      driverVehicle: null == driverVehicle
          ? _value.driverVehicle
          : driverVehicle // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: vehicleModelAdapterTypeId, adapterName: 'VehicleModelAdapter')
class _$VehicleModelImpl extends _VehicleModel {
  _$VehicleModelImpl(
      {@HiveField(0) @JsonKey(name: 'codVeiculo') required this.vehicleCode,
      @HiveField(1)
      @JsonKey(name: 'motoristaVeiculo')
      required this.driverVehicle,
      @HiveField(2) @JsonKey(name: 'nomeVeiculo') required this.vehicleName,
      @HiveField(3) @JsonKey(name: 'placaVeiculo') required this.vehiclePlate})
      : super._();

  factory _$VehicleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codVeiculo')
  final String vehicleCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'motoristaVeiculo')
  final String driverVehicle;
  @override
  @HiveField(2)
  @JsonKey(name: 'nomeVeiculo')
  final String vehicleName;
  @override
  @HiveField(3)
  @JsonKey(name: 'placaVeiculo')
  final String vehiclePlate;

  @override
  String toString() {
    return 'VehicleModel(vehicleCode: $vehicleCode, driverVehicle: $driverVehicle, vehicleName: $vehicleName, vehiclePlate: $vehiclePlate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleModelImpl &&
            (identical(other.vehicleCode, vehicleCode) ||
                other.vehicleCode == vehicleCode) &&
            (identical(other.driverVehicle, driverVehicle) ||
                other.driverVehicle == driverVehicle) &&
            (identical(other.vehicleName, vehicleName) ||
                other.vehicleName == vehicleName) &&
            (identical(other.vehiclePlate, vehiclePlate) ||
                other.vehiclePlate == vehiclePlate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, vehicleCode, driverVehicle, vehicleName, vehiclePlate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleModelImplCopyWith<_$VehicleModelImpl> get copyWith =>
      __$$VehicleModelImplCopyWithImpl<_$VehicleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleModelImplToJson(
      this,
    );
  }
}

abstract class _VehicleModel extends VehicleModel {
  factory _VehicleModel(
      {@HiveField(0)
      @JsonKey(name: 'codVeiculo')
      required final String vehicleCode,
      @HiveField(1)
      @JsonKey(name: 'motoristaVeiculo')
      required final String driverVehicle,
      @HiveField(2)
      @JsonKey(name: 'nomeVeiculo')
      required final String vehicleName,
      @HiveField(3)
      @JsonKey(name: 'placaVeiculo')
      required final String vehiclePlate}) = _$VehicleModelImpl;
  _VehicleModel._() : super._();

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$VehicleModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codVeiculo')
  String get vehicleCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'motoristaVeiculo')
  String get driverVehicle;
  @override
  @HiveField(2)
  @JsonKey(name: 'nomeVeiculo')
  String get vehicleName;
  @override
  @HiveField(3)
  @JsonKey(name: 'placaVeiculo')
  String get vehiclePlate;
  @override
  @JsonKey(ignore: true)
  _$$VehicleModelImplCopyWith<_$VehicleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
