// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variety.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Variety {
  String get varietyCode => throw _privateConstructorUsedError;
  String get varietyDescription => throw _privateConstructorUsedError;
  String get productCode => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VarietyCopyWith<Variety> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarietyCopyWith<$Res> {
  factory $VarietyCopyWith(Variety value, $Res Function(Variety) then) =
      _$VarietyCopyWithImpl<$Res, Variety>;
  @useResult
  $Res call(
      {String varietyCode,
      String varietyDescription,
      String productCode,
      String productDescription});
}

/// @nodoc
class _$VarietyCopyWithImpl<$Res, $Val extends Variety>
    implements $VarietyCopyWith<$Res> {
  _$VarietyCopyWithImpl(this._value, this._then);

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
abstract class _$$VarietyImplCopyWith<$Res> implements $VarietyCopyWith<$Res> {
  factory _$$VarietyImplCopyWith(
          _$VarietyImpl value, $Res Function(_$VarietyImpl) then) =
      __$$VarietyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String varietyCode,
      String varietyDescription,
      String productCode,
      String productDescription});
}

/// @nodoc
class __$$VarietyImplCopyWithImpl<$Res>
    extends _$VarietyCopyWithImpl<$Res, _$VarietyImpl>
    implements _$$VarietyImplCopyWith<$Res> {
  __$$VarietyImplCopyWithImpl(
      _$VarietyImpl _value, $Res Function(_$VarietyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varietyCode = null,
    Object? varietyDescription = null,
    Object? productCode = null,
    Object? productDescription = null,
  }) {
    return _then(_$VarietyImpl(
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

class _$VarietyImpl extends _Variety {
  _$VarietyImpl(
      {this.varietyCode = '',
      this.varietyDescription = '',
      this.productCode = '',
      this.productDescription = ''})
      : super._();

  @override
  @JsonKey()
  final String varietyCode;
  @override
  @JsonKey()
  final String varietyDescription;
  @override
  @JsonKey()
  final String productCode;
  @override
  @JsonKey()
  final String productDescription;

  @override
  String toString() {
    return 'Variety(varietyCode: $varietyCode, varietyDescription: $varietyDescription, productCode: $productCode, productDescription: $productDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VarietyImpl &&
            (identical(other.varietyCode, varietyCode) ||
                other.varietyCode == varietyCode) &&
            (identical(other.varietyDescription, varietyDescription) ||
                other.varietyDescription == varietyDescription) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, varietyCode, varietyDescription,
      productCode, productDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VarietyImplCopyWith<_$VarietyImpl> get copyWith =>
      __$$VarietyImplCopyWithImpl<_$VarietyImpl>(this, _$identity);
}

abstract class _Variety extends Variety {
  factory _Variety(
      {final String varietyCode,
      final String varietyDescription,
      final String productCode,
      final String productDescription}) = _$VarietyImpl;
  _Variety._() : super._();

  @override
  String get varietyCode;
  @override
  String get varietyDescription;
  @override
  String get productCode;
  @override
  String get productDescription;
  @override
  @JsonKey(ignore: true)
  _$$VarietyImplCopyWith<_$VarietyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
