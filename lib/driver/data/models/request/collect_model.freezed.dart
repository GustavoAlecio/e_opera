// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collect_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectModel _$CollectModelFromJson(Map<String, dynamic> json) {
  return _CollectModel.fromJson(json);
}

/// @nodoc
mixin _$CollectModel {
  @HiveField(0)
  @JsonKey(name: 'ZF1_ID')
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'ZF1_DATA')
  String get data => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'ZF1_SAFRA')
  String get harvest => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'ZF1_FAZ')
  String get farm => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'ZF1_TALHAO')
  String get field => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'ZF1_COD')
  String get productCode => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'ZF1_CODVAR')
  String get varietyCode => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'ZF1_ORDCOL')
  String get order => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'ZF1_PLACA')
  String get vehiclePlate => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'ZF1_TRANSP')
  String get shippingCompany => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'ZF1_CODMOT')
  String get driverCode => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'ZF1_FILORI')
  String get subsidiaryOrigin => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'ZF1_ENTDES')
  String get entityDescription => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'ZF1_LOJDES')
  String get storeDescription => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'ZF1_QTDE')
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(15)
  dynamic get alreadySent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectModelCopyWith<CollectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectModelCopyWith<$Res> {
  factory $CollectModelCopyWith(
          CollectModel value, $Res Function(CollectModel) then) =
      _$CollectModelCopyWithImpl<$Res, CollectModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'ZF1_ID') String id,
      @HiveField(1) @JsonKey(name: 'ZF1_DATA') String data,
      @HiveField(2) @JsonKey(name: 'ZF1_SAFRA') String harvest,
      @HiveField(3) @JsonKey(name: 'ZF1_FAZ') String farm,
      @HiveField(4) @JsonKey(name: 'ZF1_TALHAO') String field,
      @HiveField(5) @JsonKey(name: 'ZF1_COD') String productCode,
      @HiveField(6) @JsonKey(name: 'ZF1_CODVAR') String varietyCode,
      @HiveField(7) @JsonKey(name: 'ZF1_ORDCOL') String order,
      @HiveField(8) @JsonKey(name: 'ZF1_PLACA') String vehiclePlate,
      @HiveField(9) @JsonKey(name: 'ZF1_TRANSP') String shippingCompany,
      @HiveField(10) @JsonKey(name: 'ZF1_CODMOT') String driverCode,
      @HiveField(11) @JsonKey(name: 'ZF1_FILORI') String subsidiaryOrigin,
      @HiveField(12) @JsonKey(name: 'ZF1_ENTDES') String entityDescription,
      @HiveField(13) @JsonKey(name: 'ZF1_LOJDES') String storeDescription,
      @HiveField(14) @JsonKey(name: 'ZF1_QTDE') int quantity,
      @HiveField(15) dynamic alreadySent});
}

/// @nodoc
class _$CollectModelCopyWithImpl<$Res, $Val extends CollectModel>
    implements $CollectModelCopyWith<$Res> {
  _$CollectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? harvest = null,
    Object? farm = null,
    Object? field = null,
    Object? productCode = null,
    Object? varietyCode = null,
    Object? order = null,
    Object? vehiclePlate = null,
    Object? shippingCompany = null,
    Object? driverCode = null,
    Object? subsidiaryOrigin = null,
    Object? entityDescription = null,
    Object? storeDescription = null,
    Object? quantity = null,
    Object? alreadySent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as String,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompany: null == shippingCompany
          ? _value.shippingCompany
          : shippingCompany // ignore: cast_nullable_to_non_nullable
              as String,
      driverCode: null == driverCode
          ? _value.driverCode
          : driverCode // ignore: cast_nullable_to_non_nullable
              as String,
      subsidiaryOrigin: null == subsidiaryOrigin
          ? _value.subsidiaryOrigin
          : subsidiaryOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      entityDescription: null == entityDescription
          ? _value.entityDescription
          : entityDescription // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: null == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      alreadySent: freezed == alreadySent
          ? _value.alreadySent
          : alreadySent // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectModelImplCopyWith<$Res>
    implements $CollectModelCopyWith<$Res> {
  factory _$$CollectModelImplCopyWith(
          _$CollectModelImpl value, $Res Function(_$CollectModelImpl) then) =
      __$$CollectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'ZF1_ID') String id,
      @HiveField(1) @JsonKey(name: 'ZF1_DATA') String data,
      @HiveField(2) @JsonKey(name: 'ZF1_SAFRA') String harvest,
      @HiveField(3) @JsonKey(name: 'ZF1_FAZ') String farm,
      @HiveField(4) @JsonKey(name: 'ZF1_TALHAO') String field,
      @HiveField(5) @JsonKey(name: 'ZF1_COD') String productCode,
      @HiveField(6) @JsonKey(name: 'ZF1_CODVAR') String varietyCode,
      @HiveField(7) @JsonKey(name: 'ZF1_ORDCOL') String order,
      @HiveField(8) @JsonKey(name: 'ZF1_PLACA') String vehiclePlate,
      @HiveField(9) @JsonKey(name: 'ZF1_TRANSP') String shippingCompany,
      @HiveField(10) @JsonKey(name: 'ZF1_CODMOT') String driverCode,
      @HiveField(11) @JsonKey(name: 'ZF1_FILORI') String subsidiaryOrigin,
      @HiveField(12) @JsonKey(name: 'ZF1_ENTDES') String entityDescription,
      @HiveField(13) @JsonKey(name: 'ZF1_LOJDES') String storeDescription,
      @HiveField(14) @JsonKey(name: 'ZF1_QTDE') int quantity,
      @HiveField(15) dynamic alreadySent});
}

/// @nodoc
class __$$CollectModelImplCopyWithImpl<$Res>
    extends _$CollectModelCopyWithImpl<$Res, _$CollectModelImpl>
    implements _$$CollectModelImplCopyWith<$Res> {
  __$$CollectModelImplCopyWithImpl(
      _$CollectModelImpl _value, $Res Function(_$CollectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? harvest = null,
    Object? farm = null,
    Object? field = null,
    Object? productCode = null,
    Object? varietyCode = null,
    Object? order = null,
    Object? vehiclePlate = null,
    Object? shippingCompany = null,
    Object? driverCode = null,
    Object? subsidiaryOrigin = null,
    Object? entityDescription = null,
    Object? storeDescription = null,
    Object? quantity = null,
    Object? alreadySent = freezed,
  }) {
    return _then(_$CollectModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as String,
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      vehiclePlate: null == vehiclePlate
          ? _value.vehiclePlate
          : vehiclePlate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingCompany: null == shippingCompany
          ? _value.shippingCompany
          : shippingCompany // ignore: cast_nullable_to_non_nullable
              as String,
      driverCode: null == driverCode
          ? _value.driverCode
          : driverCode // ignore: cast_nullable_to_non_nullable
              as String,
      subsidiaryOrigin: null == subsidiaryOrigin
          ? _value.subsidiaryOrigin
          : subsidiaryOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      entityDescription: null == entityDescription
          ? _value.entityDescription
          : entityDescription // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: null == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      alreadySent: freezed == alreadySent ? _value.alreadySent! : alreadySent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: collectModelAdapterTypeId, adapterName: 'CollectModelAdapter')
class _$CollectModelImpl extends _CollectModel {
  const _$CollectModelImpl(
      {@HiveField(0) @JsonKey(name: 'ZF1_ID') required this.id,
      @HiveField(1) @JsonKey(name: 'ZF1_DATA') required this.data,
      @HiveField(2) @JsonKey(name: 'ZF1_SAFRA') required this.harvest,
      @HiveField(3) @JsonKey(name: 'ZF1_FAZ') required this.farm,
      @HiveField(4) @JsonKey(name: 'ZF1_TALHAO') required this.field,
      @HiveField(5) @JsonKey(name: 'ZF1_COD') required this.productCode,
      @HiveField(6) @JsonKey(name: 'ZF1_CODVAR') required this.varietyCode,
      @HiveField(7) @JsonKey(name: 'ZF1_ORDCOL') this.order = '',
      @HiveField(8) @JsonKey(name: 'ZF1_PLACA') required this.vehiclePlate,
      @HiveField(9) @JsonKey(name: 'ZF1_TRANSP') required this.shippingCompany,
      @HiveField(10) @JsonKey(name: 'ZF1_CODMOT') required this.driverCode,
      @HiveField(11)
      @JsonKey(name: 'ZF1_FILORI')
      required this.subsidiaryOrigin,
      @HiveField(12)
      @JsonKey(name: 'ZF1_ENTDES')
      required this.entityDescription,
      @HiveField(13)
      @JsonKey(name: 'ZF1_LOJDES')
      required this.storeDescription,
      @HiveField(14) @JsonKey(name: 'ZF1_QTDE') required this.quantity,
      @HiveField(15) this.alreadySent = false})
      : super._();

  factory _$CollectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'ZF1_ID')
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: 'ZF1_DATA')
  final String data;
  @override
  @HiveField(2)
  @JsonKey(name: 'ZF1_SAFRA')
  final String harvest;
  @override
  @HiveField(3)
  @JsonKey(name: 'ZF1_FAZ')
  final String farm;
  @override
  @HiveField(4)
  @JsonKey(name: 'ZF1_TALHAO')
  final String field;
  @override
  @HiveField(5)
  @JsonKey(name: 'ZF1_COD')
  final String productCode;
  @override
  @HiveField(6)
  @JsonKey(name: 'ZF1_CODVAR')
  final String varietyCode;
  @override
  @HiveField(7)
  @JsonKey(name: 'ZF1_ORDCOL')
  final String order;
  @override
  @HiveField(8)
  @JsonKey(name: 'ZF1_PLACA')
  final String vehiclePlate;
  @override
  @HiveField(9)
  @JsonKey(name: 'ZF1_TRANSP')
  final String shippingCompany;
  @override
  @HiveField(10)
  @JsonKey(name: 'ZF1_CODMOT')
  final String driverCode;
  @override
  @HiveField(11)
  @JsonKey(name: 'ZF1_FILORI')
  final String subsidiaryOrigin;
  @override
  @HiveField(12)
  @JsonKey(name: 'ZF1_ENTDES')
  final String entityDescription;
  @override
  @HiveField(13)
  @JsonKey(name: 'ZF1_LOJDES')
  final String storeDescription;
  @override
  @HiveField(14)
  @JsonKey(name: 'ZF1_QTDE')
  final int quantity;
  @override
  @JsonKey()
  @HiveField(15)
  final dynamic alreadySent;

  @override
  String toString() {
    return 'CollectModel(id: $id, data: $data, harvest: $harvest, farm: $farm, field: $field, productCode: $productCode, varietyCode: $varietyCode, order: $order, vehiclePlate: $vehiclePlate, shippingCompany: $shippingCompany, driverCode: $driverCode, subsidiaryOrigin: $subsidiaryOrigin, entityDescription: $entityDescription, storeDescription: $storeDescription, quantity: $quantity, alreadySent: $alreadySent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.harvest, harvest) || other.harvest == harvest) &&
            (identical(other.farm, farm) || other.farm == farm) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.varietyCode, varietyCode) ||
                other.varietyCode == varietyCode) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.vehiclePlate, vehiclePlate) ||
                other.vehiclePlate == vehiclePlate) &&
            (identical(other.shippingCompany, shippingCompany) ||
                other.shippingCompany == shippingCompany) &&
            (identical(other.driverCode, driverCode) ||
                other.driverCode == driverCode) &&
            (identical(other.subsidiaryOrigin, subsidiaryOrigin) ||
                other.subsidiaryOrigin == subsidiaryOrigin) &&
            (identical(other.entityDescription, entityDescription) ||
                other.entityDescription == entityDescription) &&
            (identical(other.storeDescription, storeDescription) ||
                other.storeDescription == storeDescription) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other.alreadySent, alreadySent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      data,
      harvest,
      farm,
      field,
      productCode,
      varietyCode,
      order,
      vehiclePlate,
      shippingCompany,
      driverCode,
      subsidiaryOrigin,
      entityDescription,
      storeDescription,
      quantity,
      const DeepCollectionEquality().hash(alreadySent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectModelImplCopyWith<_$CollectModelImpl> get copyWith =>
      __$$CollectModelImplCopyWithImpl<_$CollectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectModelImplToJson(
      this,
    );
  }
}

abstract class _CollectModel extends CollectModel {
  const factory _CollectModel(
      {@HiveField(0) @JsonKey(name: 'ZF1_ID') required final String id,
      @HiveField(1) @JsonKey(name: 'ZF1_DATA') required final String data,
      @HiveField(2) @JsonKey(name: 'ZF1_SAFRA') required final String harvest,
      @HiveField(3) @JsonKey(name: 'ZF1_FAZ') required final String farm,
      @HiveField(4) @JsonKey(name: 'ZF1_TALHAO') required final String field,
      @HiveField(5) @JsonKey(name: 'ZF1_COD') required final String productCode,
      @HiveField(6)
      @JsonKey(name: 'ZF1_CODVAR')
      required final String varietyCode,
      @HiveField(7) @JsonKey(name: 'ZF1_ORDCOL') final String order,
      @HiveField(8)
      @JsonKey(name: 'ZF1_PLACA')
      required final String vehiclePlate,
      @HiveField(9)
      @JsonKey(name: 'ZF1_TRANSP')
      required final String shippingCompany,
      @HiveField(10)
      @JsonKey(name: 'ZF1_CODMOT')
      required final String driverCode,
      @HiveField(11)
      @JsonKey(name: 'ZF1_FILORI')
      required final String subsidiaryOrigin,
      @HiveField(12)
      @JsonKey(name: 'ZF1_ENTDES')
      required final String entityDescription,
      @HiveField(13)
      @JsonKey(name: 'ZF1_LOJDES')
      required final String storeDescription,
      @HiveField(14) @JsonKey(name: 'ZF1_QTDE') required final int quantity,
      @HiveField(15) final dynamic alreadySent}) = _$CollectModelImpl;
  const _CollectModel._() : super._();

  factory _CollectModel.fromJson(Map<String, dynamic> json) =
      _$CollectModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'ZF1_ID')
  String get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'ZF1_DATA')
  String get data;
  @override
  @HiveField(2)
  @JsonKey(name: 'ZF1_SAFRA')
  String get harvest;
  @override
  @HiveField(3)
  @JsonKey(name: 'ZF1_FAZ')
  String get farm;
  @override
  @HiveField(4)
  @JsonKey(name: 'ZF1_TALHAO')
  String get field;
  @override
  @HiveField(5)
  @JsonKey(name: 'ZF1_COD')
  String get productCode;
  @override
  @HiveField(6)
  @JsonKey(name: 'ZF1_CODVAR')
  String get varietyCode;
  @override
  @HiveField(7)
  @JsonKey(name: 'ZF1_ORDCOL')
  String get order;
  @override
  @HiveField(8)
  @JsonKey(name: 'ZF1_PLACA')
  String get vehiclePlate;
  @override
  @HiveField(9)
  @JsonKey(name: 'ZF1_TRANSP')
  String get shippingCompany;
  @override
  @HiveField(10)
  @JsonKey(name: 'ZF1_CODMOT')
  String get driverCode;
  @override
  @HiveField(11)
  @JsonKey(name: 'ZF1_FILORI')
  String get subsidiaryOrigin;
  @override
  @HiveField(12)
  @JsonKey(name: 'ZF1_ENTDES')
  String get entityDescription;
  @override
  @HiveField(13)
  @JsonKey(name: 'ZF1_LOJDES')
  String get storeDescription;
  @override
  @HiveField(14)
  @JsonKey(name: 'ZF1_QTDE')
  int get quantity;
  @override
  @HiveField(15)
  dynamic get alreadySent;
  @override
  @JsonKey(ignore: true)
  _$$CollectModelImplCopyWith<_$CollectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
