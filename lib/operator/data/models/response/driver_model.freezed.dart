// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  @HiveField(0)
  @JsonKey(name: 'codMotorista')
  String get driverCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nomeMotorista')
  String get driverName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'nreduzMotorista')
  String get driverReducedName => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'cpfMotorista')
  String get driverCpf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
          DriverModel value, $Res Function(DriverModel) then) =
      _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codMotorista') String driverCode,
      @HiveField(1) @JsonKey(name: 'nomeMotorista') String driverName,
      @HiveField(2) @JsonKey(name: 'nreduzMotorista') String driverReducedName,
      @HiveField(3) @JsonKey(name: 'cpfMotorista') String driverCpf});
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DriverModelImplCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$DriverModelImplCopyWith(
          _$DriverModelImpl value, $Res Function(_$DriverModelImpl) then) =
      __$$DriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codMotorista') String driverCode,
      @HiveField(1) @JsonKey(name: 'nomeMotorista') String driverName,
      @HiveField(2) @JsonKey(name: 'nreduzMotorista') String driverReducedName,
      @HiveField(3) @JsonKey(name: 'cpfMotorista') String driverCpf});
}

/// @nodoc
class __$$DriverModelImplCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$DriverModelImpl>
    implements _$$DriverModelImplCopyWith<$Res> {
  __$$DriverModelImplCopyWithImpl(
      _$DriverModelImpl _value, $Res Function(_$DriverModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverCode = null,
    Object? driverName = null,
    Object? driverReducedName = null,
    Object? driverCpf = null,
  }) {
    return _then(_$DriverModelImpl(
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
@JsonSerializable()
@HiveType(typeId: driverModelAdapterTypeId, adapterName: 'DriverModelAdapter')
class _$DriverModelImpl extends _DriverModel {
  const _$DriverModelImpl(
      {@HiveField(0) @JsonKey(name: 'codMotorista') required this.driverCode,
      @HiveField(1) @JsonKey(name: 'nomeMotorista') required this.driverName,
      @HiveField(2)
      @JsonKey(name: 'nreduzMotorista')
      required this.driverReducedName,
      @HiveField(3) @JsonKey(name: 'cpfMotorista') required this.driverCpf})
      : super._();

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codMotorista')
  final String driverCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeMotorista')
  final String driverName;
  @override
  @HiveField(2)
  @JsonKey(name: 'nreduzMotorista')
  final String driverReducedName;
  @override
  @HiveField(3)
  @JsonKey(name: 'cpfMotorista')
  final String driverCpf;

  @override
  String toString() {
    return 'DriverModel(driverCode: $driverCode, driverName: $driverName, driverReducedName: $driverReducedName, driverCpf: $driverCpf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverModelImpl &&
            (identical(other.driverCode, driverCode) ||
                other.driverCode == driverCode) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.driverReducedName, driverReducedName) ||
                other.driverReducedName == driverReducedName) &&
            (identical(other.driverCpf, driverCpf) ||
                other.driverCpf == driverCpf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, driverCode, driverName, driverReducedName, driverCpf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      __$$DriverModelImplCopyWithImpl<_$DriverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverModelImplToJson(
      this,
    );
  }
}

abstract class _DriverModel extends DriverModel {
  const factory _DriverModel(
      {@HiveField(0)
      @JsonKey(name: 'codMotorista')
      required final String driverCode,
      @HiveField(1)
      @JsonKey(name: 'nomeMotorista')
      required final String driverName,
      @HiveField(2)
      @JsonKey(name: 'nreduzMotorista')
      required final String driverReducedName,
      @HiveField(3)
      @JsonKey(name: 'cpfMotorista')
      required final String driverCpf}) = _$DriverModelImpl;
  const _DriverModel._() : super._();

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codMotorista')
  String get driverCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeMotorista')
  String get driverName;
  @override
  @HiveField(2)
  @JsonKey(name: 'nreduzMotorista')
  String get driverReducedName;
  @override
  @HiveField(3)
  @JsonKey(name: 'cpfMotorista')
  String get driverCpf;
  @override
  @JsonKey(ignore: true)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
