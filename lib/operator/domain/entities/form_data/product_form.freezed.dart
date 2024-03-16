// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductForm _$ProductFormFromJson(Map<String, dynamic> json) {
  return _ProductForm.fromJson(json);
}

/// @nodoc
mixin _$ProductForm {
  String get productCode => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get productVariety => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductFormCopyWith<ProductForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormCopyWith<$Res> {
  factory $ProductFormCopyWith(
          ProductForm value, $Res Function(ProductForm) then) =
      _$ProductFormCopyWithImpl<$Res, ProductForm>;
  @useResult
  $Res call(
      {String productCode,
      String productDescription,
      String productVariety,
      String quantity,
      String unit});
}

/// @nodoc
class _$ProductFormCopyWithImpl<$Res, $Val extends ProductForm>
    implements $ProductFormCopyWith<$Res> {
  _$ProductFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCode = null,
    Object? productDescription = null,
    Object? productVariety = null,
    Object? quantity = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productVariety: null == productVariety
          ? _value.productVariety
          : productVariety // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductFormImplCopyWith<$Res>
    implements $ProductFormCopyWith<$Res> {
  factory _$$ProductFormImplCopyWith(
          _$ProductFormImpl value, $Res Function(_$ProductFormImpl) then) =
      __$$ProductFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productCode,
      String productDescription,
      String productVariety,
      String quantity,
      String unit});
}

/// @nodoc
class __$$ProductFormImplCopyWithImpl<$Res>
    extends _$ProductFormCopyWithImpl<$Res, _$ProductFormImpl>
    implements _$$ProductFormImplCopyWith<$Res> {
  __$$ProductFormImplCopyWithImpl(
      _$ProductFormImpl _value, $Res Function(_$ProductFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCode = null,
    Object? productDescription = null,
    Object? productVariety = null,
    Object? quantity = null,
    Object? unit = null,
  }) {
    return _then(_$ProductFormImpl(
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productVariety: null == productVariety
          ? _value.productVariety
          : productVariety // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductFormImpl extends _ProductForm {
  _$ProductFormImpl(
      {this.productCode = '',
      this.productDescription = '',
      this.productVariety = '',
      this.quantity = '',
      this.unit = ''})
      : super._();

  factory _$ProductFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductFormImplFromJson(json);

  @override
  @JsonKey()
  final String productCode;
  @override
  @JsonKey()
  final String productDescription;
  @override
  @JsonKey()
  final String productVariety;
  @override
  @JsonKey()
  final String quantity;
  @override
  @JsonKey()
  final String unit;

  @override
  String toString() {
    return 'ProductForm(productCode: $productCode, productDescription: $productDescription, productVariety: $productVariety, quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFormImpl &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productVariety, productVariety) ||
                other.productVariety == productVariety) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productCode, productDescription,
      productVariety, quantity, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFormImplCopyWith<_$ProductFormImpl> get copyWith =>
      __$$ProductFormImplCopyWithImpl<_$ProductFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductFormImplToJson(
      this,
    );
  }
}

abstract class _ProductForm extends ProductForm {
  factory _ProductForm(
      {final String productCode,
      final String productDescription,
      final String productVariety,
      final String quantity,
      final String unit}) = _$ProductFormImpl;
  _ProductForm._() : super._();

  factory _ProductForm.fromJson(Map<String, dynamic> json) =
      _$ProductFormImpl.fromJson;

  @override
  String get productCode;
  @override
  String get productDescription;
  @override
  String get productVariety;
  @override
  String get quantity;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$ProductFormImplCopyWith<_$ProductFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
