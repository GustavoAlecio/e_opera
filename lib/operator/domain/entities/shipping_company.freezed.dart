// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShippingCompany {
  String get shippingCompanyCode => throw _privateConstructorUsedError;
  String get shippingCompanyReducedName => throw _privateConstructorUsedError;
  String get shippingCompanyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShippingCompanyCopyWith<ShippingCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCompanyCopyWith<$Res> {
  factory $ShippingCompanyCopyWith(
          ShippingCompany value, $Res Function(ShippingCompany) then) =
      _$ShippingCompanyCopyWithImpl<$Res, ShippingCompany>;
  @useResult
  $Res call(
      {String shippingCompanyCode,
      String shippingCompanyReducedName,
      String shippingCompanyName});
}

/// @nodoc
class _$ShippingCompanyCopyWithImpl<$Res, $Val extends ShippingCompany>
    implements $ShippingCompanyCopyWith<$Res> {
  _$ShippingCompanyCopyWithImpl(this._value, this._then);

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
abstract class _$$ShippingCompanyImplCopyWith<$Res>
    implements $ShippingCompanyCopyWith<$Res> {
  factory _$$ShippingCompanyImplCopyWith(_$ShippingCompanyImpl value,
          $Res Function(_$ShippingCompanyImpl) then) =
      __$$ShippingCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shippingCompanyCode,
      String shippingCompanyReducedName,
      String shippingCompanyName});
}

/// @nodoc
class __$$ShippingCompanyImplCopyWithImpl<$Res>
    extends _$ShippingCompanyCopyWithImpl<$Res, _$ShippingCompanyImpl>
    implements _$$ShippingCompanyImplCopyWith<$Res> {
  __$$ShippingCompanyImplCopyWithImpl(
      _$ShippingCompanyImpl _value, $Res Function(_$ShippingCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingCompanyCode = null,
    Object? shippingCompanyReducedName = null,
    Object? shippingCompanyName = null,
  }) {
    return _then(_$ShippingCompanyImpl(
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

class _$ShippingCompanyImpl extends _ShippingCompany {
  _$ShippingCompanyImpl(
      {this.shippingCompanyCode = '',
      this.shippingCompanyReducedName = '',
      this.shippingCompanyName = ''})
      : super._();

  @override
  @JsonKey()
  final String shippingCompanyCode;
  @override
  @JsonKey()
  final String shippingCompanyReducedName;
  @override
  @JsonKey()
  final String shippingCompanyName;

  @override
  String toString() {
    return 'ShippingCompany(shippingCompanyCode: $shippingCompanyCode, shippingCompanyReducedName: $shippingCompanyReducedName, shippingCompanyName: $shippingCompanyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingCompanyImpl &&
            (identical(other.shippingCompanyCode, shippingCompanyCode) ||
                other.shippingCompanyCode == shippingCompanyCode) &&
            (identical(other.shippingCompanyReducedName,
                    shippingCompanyReducedName) ||
                other.shippingCompanyReducedName ==
                    shippingCompanyReducedName) &&
            (identical(other.shippingCompanyName, shippingCompanyName) ||
                other.shippingCompanyName == shippingCompanyName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shippingCompanyCode,
      shippingCompanyReducedName, shippingCompanyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingCompanyImplCopyWith<_$ShippingCompanyImpl> get copyWith =>
      __$$ShippingCompanyImplCopyWithImpl<_$ShippingCompanyImpl>(
          this, _$identity);
}

abstract class _ShippingCompany extends ShippingCompany {
  factory _ShippingCompany(
      {final String shippingCompanyCode,
      final String shippingCompanyReducedName,
      final String shippingCompanyName}) = _$ShippingCompanyImpl;
  _ShippingCompany._() : super._();

  @override
  String get shippingCompanyCode;
  @override
  String get shippingCompanyReducedName;
  @override
  String get shippingCompanyName;
  @override
  @JsonKey(ignore: true)
  _$$ShippingCompanyImplCopyWith<_$ShippingCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
