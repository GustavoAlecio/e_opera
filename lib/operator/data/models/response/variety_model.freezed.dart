// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variety_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VarietyModel _$VarietyModelFromJson(Map<String, dynamic> json) {
  return _VarietyModel.fromJson(json);
}

/// @nodoc
mixin _$VarietyModel {
  @HiveField(0)
  @JsonKey(name: 'codVariedade')
  String get varietyCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'desVariedade')
  String get varietyDescription => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'codProduto')
  String get productCode => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'desProduto')
  String get productDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VarietyModelCopyWith<VarietyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarietyModelCopyWith<$Res> {
  factory $VarietyModelCopyWith(
          VarietyModel value, $Res Function(VarietyModel) then) =
      _$VarietyModelCopyWithImpl<$Res, VarietyModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codVariedade') String varietyCode,
      @HiveField(1) @JsonKey(name: 'desVariedade') String varietyDescription,
      @HiveField(2) @JsonKey(name: 'codProduto') String productCode,
      @HiveField(3) @JsonKey(name: 'desProduto') String productDescription});
}

/// @nodoc
class _$VarietyModelCopyWithImpl<$Res, $Val extends VarietyModel>
    implements $VarietyModelCopyWith<$Res> {
  _$VarietyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varietyCode = null,
    Object? varietyDescription = null,
    Object? productCode = null,
    Object? productDescription = null,
  }) {
    return _then(_value.copyWith(
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyDescription: null == varietyDescription
          ? _value.varietyDescription
          : varietyDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VarietyModelImplCopyWith<$Res>
    implements $VarietyModelCopyWith<$Res> {
  factory _$$VarietyModelImplCopyWith(
          _$VarietyModelImpl value, $Res Function(_$VarietyModelImpl) then) =
      __$$VarietyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codVariedade') String varietyCode,
      @HiveField(1) @JsonKey(name: 'desVariedade') String varietyDescription,
      @HiveField(2) @JsonKey(name: 'codProduto') String productCode,
      @HiveField(3) @JsonKey(name: 'desProduto') String productDescription});
}

/// @nodoc
class __$$VarietyModelImplCopyWithImpl<$Res>
    extends _$VarietyModelCopyWithImpl<$Res, _$VarietyModelImpl>
    implements _$$VarietyModelImplCopyWith<$Res> {
  __$$VarietyModelImplCopyWithImpl(
      _$VarietyModelImpl _value, $Res Function(_$VarietyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varietyCode = null,
    Object? varietyDescription = null,
    Object? productCode = null,
    Object? productDescription = null,
  }) {
    return _then(_$VarietyModelImpl(
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyDescription: null == varietyDescription
          ? _value.varietyDescription
          : varietyDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: varietyModelAdapterTypeId, adapterName: 'VarietyModelAdapter')
class _$VarietyModelImpl extends _VarietyModel {
  _$VarietyModelImpl(
      {@HiveField(0) @JsonKey(name: 'codVariedade') required this.varietyCode,
      @HiveField(1)
      @JsonKey(name: 'desVariedade')
      required this.varietyDescription,
      @HiveField(2) @JsonKey(name: 'codProduto') required this.productCode,
      @HiveField(3)
      @JsonKey(name: 'desProduto')
      required this.productDescription})
      : super._();

  factory _$VarietyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VarietyModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codVariedade')
  final String varietyCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'desVariedade')
  final String varietyDescription;
  @override
  @HiveField(2)
  @JsonKey(name: 'codProduto')
  final String productCode;
  @override
  @HiveField(3)
  @JsonKey(name: 'desProduto')
  final String productDescription;

  @override
  String toString() {
    return 'VarietyModel(varietyCode: $varietyCode, varietyDescription: $varietyDescription, productCode: $productCode, productDescription: $productDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VarietyModelImpl &&
            (identical(other.varietyCode, varietyCode) ||
                other.varietyCode == varietyCode) &&
            (identical(other.varietyDescription, varietyDescription) ||
                other.varietyDescription == varietyDescription) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, varietyCode, varietyDescription,
      productCode, productDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VarietyModelImplCopyWith<_$VarietyModelImpl> get copyWith =>
      __$$VarietyModelImplCopyWithImpl<_$VarietyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VarietyModelImplToJson(
      this,
    );
  }
}

abstract class _VarietyModel extends VarietyModel {
  factory _VarietyModel(
      {@HiveField(0)
      @JsonKey(name: 'codVariedade')
      required final String varietyCode,
      @HiveField(1)
      @JsonKey(name: 'desVariedade')
      required final String varietyDescription,
      @HiveField(2)
      @JsonKey(name: 'codProduto')
      required final String productCode,
      @HiveField(3)
      @JsonKey(name: 'desProduto')
      required final String productDescription}) = _$VarietyModelImpl;
  _VarietyModel._() : super._();

  factory _VarietyModel.fromJson(Map<String, dynamic> json) =
      _$VarietyModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codVariedade')
  String get varietyCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'desVariedade')
  String get varietyDescription;
  @override
  @HiveField(2)
  @JsonKey(name: 'codProduto')
  String get productCode;
  @override
  @HiveField(3)
  @JsonKey(name: 'desProduto')
  String get productDescription;
  @override
  @JsonKey(ignore: true)
  _$$VarietyModelImplCopyWith<_$VarietyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
