// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingCompanyModel _$ShippingCompanyModelFromJson(Map<String, dynamic> json) {
  return _ShippingCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingCompanyModel {
  @HiveField(0)
  @JsonKey(name: 'codTransportadora')
  String get shippingCompanyCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nreduzTransportadora')
  String get shippingCompanyReducedName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'nomeTransportadora')
  String get shippingCompanyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingCompanyModelCopyWith<ShippingCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCompanyModelCopyWith<$Res> {
  factory $ShippingCompanyModelCopyWith(ShippingCompanyModel value,
          $Res Function(ShippingCompanyModel) then) =
      _$ShippingCompanyModelCopyWithImpl<$Res, ShippingCompanyModel>;
  @useResult
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'codTransportadora')
      String shippingCompanyCode,
      @HiveField(1)
      @JsonKey(name: 'nreduzTransportadora')
      String shippingCompanyReducedName,
      @HiveField(2)
      @JsonKey(name: 'nomeTransportadora')
      String shippingCompanyName});
}

/// @nodoc
class _$ShippingCompanyModelCopyWithImpl<$Res,
        $Val extends ShippingCompanyModel>
    implements $ShippingCompanyModelCopyWith<$Res> {
  _$ShippingCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingCompanyCode = null,
    Object? shippingCompanyReducedName = null,
    Object? shippingCompanyName = null,
  }) {
    return _then(_value.copyWith(
      shippingCompanyCode: null == shippingCompanyCode
          ? _value.shippingCompanyCode
          : shippingCompanyCode // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompanyReducedName: null == shippingCompanyReducedName
          ? _value.shippingCompanyReducedName
          : shippingCompanyReducedName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompanyName: null == shippingCompanyName
          ? _value.shippingCompanyName
          : shippingCompanyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingCompanyModelImplCopyWith<$Res>
    implements $ShippingCompanyModelCopyWith<$Res> {
  factory _$$ShippingCompanyModelImplCopyWith(_$ShippingCompanyModelImpl value,
          $Res Function(_$ShippingCompanyModelImpl) then) =
      __$$ShippingCompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
      @JsonKey(name: 'codTransportadora')
      String shippingCompanyCode,
      @HiveField(1)
      @JsonKey(name: 'nreduzTransportadora')
      String shippingCompanyReducedName,
      @HiveField(2)
      @JsonKey(name: 'nomeTransportadora')
      String shippingCompanyName});
}

/// @nodoc
class __$$ShippingCompanyModelImplCopyWithImpl<$Res>
    extends _$ShippingCompanyModelCopyWithImpl<$Res, _$ShippingCompanyModelImpl>
    implements _$$ShippingCompanyModelImplCopyWith<$Res> {
  __$$ShippingCompanyModelImplCopyWithImpl(_$ShippingCompanyModelImpl _value,
      $Res Function(_$ShippingCompanyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingCompanyCode = null,
    Object? shippingCompanyReducedName = null,
    Object? shippingCompanyName = null,
  }) {
    return _then(_$ShippingCompanyModelImpl(
      shippingCompanyCode: null == shippingCompanyCode
          ? _value.shippingCompanyCode
          : shippingCompanyCode // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompanyReducedName: null == shippingCompanyReducedName
          ? _value.shippingCompanyReducedName
          : shippingCompanyReducedName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompanyName: null == shippingCompanyName
          ? _value.shippingCompanyName
          : shippingCompanyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: shippingCompanyModelAdapterTypeId,
    adapterName: 'ShippingCompanyModelAdapter')
class _$ShippingCompanyModelImpl extends _ShippingCompanyModel {
  _$ShippingCompanyModelImpl(
      {@HiveField(0)
      @JsonKey(name: 'codTransportadora')
      required this.shippingCompanyCode,
      @HiveField(1)
      @JsonKey(name: 'nreduzTransportadora')
      required this.shippingCompanyReducedName,
      @HiveField(2)
      @JsonKey(name: 'nomeTransportadora')
      required this.shippingCompanyName})
      : super._();

  factory _$ShippingCompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingCompanyModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codTransportadora')
  final String shippingCompanyCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nreduzTransportadora')
  final String shippingCompanyReducedName;
  @override
  @HiveField(2)
  @JsonKey(name: 'nomeTransportadora')
  final String shippingCompanyName;

  @override
  String toString() {
    return 'ShippingCompanyModel(shippingCompanyCode: $shippingCompanyCode, shippingCompanyReducedName: $shippingCompanyReducedName, shippingCompanyName: $shippingCompanyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingCompanyModelImpl &&
            (identical(other.shippingCompanyCode, shippingCompanyCode) ||
                other.shippingCompanyCode == shippingCompanyCode) &&
            (identical(other.shippingCompanyReducedName,
                    shippingCompanyReducedName) ||
                other.shippingCompanyReducedName ==
                    shippingCompanyReducedName) &&
            (identical(other.shippingCompanyName, shippingCompanyName) ||
                other.shippingCompanyName == shippingCompanyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shippingCompanyCode,
      shippingCompanyReducedName, shippingCompanyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingCompanyModelImplCopyWith<_$ShippingCompanyModelImpl>
      get copyWith =>
          __$$ShippingCompanyModelImplCopyWithImpl<_$ShippingCompanyModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingCompanyModelImplToJson(
      this,
    );
  }
}

abstract class _ShippingCompanyModel extends ShippingCompanyModel {
  factory _ShippingCompanyModel(
      {@HiveField(0)
      @JsonKey(name: 'codTransportadora')
      required final String shippingCompanyCode,
      @HiveField(1)
      @JsonKey(name: 'nreduzTransportadora')
      required final String shippingCompanyReducedName,
      @HiveField(2)
      @JsonKey(name: 'nomeTransportadora')
      required final String shippingCompanyName}) = _$ShippingCompanyModelImpl;
  _ShippingCompanyModel._() : super._();

  factory _ShippingCompanyModel.fromJson(Map<String, dynamic> json) =
      _$ShippingCompanyModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codTransportadora')
  String get shippingCompanyCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nreduzTransportadora')
  String get shippingCompanyReducedName;
  @override
  @HiveField(2)
  @JsonKey(name: 'nomeTransportadora')
  String get shippingCompanyName;
  @override
  @JsonKey(ignore: true)
  _$$ShippingCompanyModelImplCopyWith<_$ShippingCompanyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
