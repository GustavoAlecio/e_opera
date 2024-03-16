// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Field _$FieldFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
mixin _$Field {
  String get fieldDescription => throw _privateConstructorUsedError;
  String get fieldCode => throw _privateConstructorUsedError;
  String get harvestField => throw _privateConstructorUsedError;
  String get farmField => throw _privateConstructorUsedError;
  String get productField => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get varietyCode => throw _privateConstructorUsedError;
  String get varietyDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {String fieldDescription,
      String fieldCode,
      String harvestField,
      String farmField,
      String productField,
      String productDescription,
      String varietyCode,
      String varietyDescription});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldDescription = null,
    Object? fieldCode = null,
    Object? harvestField = null,
    Object? farmField = null,
    Object? productField = null,
    Object? productDescription = null,
    Object? varietyCode = null,
    Object? varietyDescription = null,
  }) {
    return _then(_value.copyWith(
      fieldDescription: null == fieldDescription
          ? _value.fieldDescription
          : fieldDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
      harvestField: null == harvestField
          ? _value.harvestField
          : harvestField // ignore: cast_nullable_to_non_nullable
              as String,
      farmField: null == farmField
          ? _value.farmField
          : farmField // ignore: cast_nullable_to_non_nullable
              as String,
      productField: null == productField
          ? _value.productField
          : productField // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyDescription: null == varietyDescription
          ? _value.varietyDescription
          : varietyDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fieldDescription,
      String fieldCode,
      String harvestField,
      String farmField,
      String productField,
      String productDescription,
      String varietyCode,
      String varietyDescription});
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FieldImpl>
    implements _$$FieldImplCopyWith<$Res> {
  __$$FieldImplCopyWithImpl(
      _$FieldImpl _value, $Res Function(_$FieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldDescription = null,
    Object? fieldCode = null,
    Object? harvestField = null,
    Object? farmField = null,
    Object? productField = null,
    Object? productDescription = null,
    Object? varietyCode = null,
    Object? varietyDescription = null,
  }) {
    return _then(_$FieldImpl(
      fieldDescription: null == fieldDescription
          ? _value.fieldDescription
          : fieldDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
      harvestField: null == harvestField
          ? _value.harvestField
          : harvestField // ignore: cast_nullable_to_non_nullable
              as String,
      farmField: null == farmField
          ? _value.farmField
          : farmField // ignore: cast_nullable_to_non_nullable
              as String,
      productField: null == productField
          ? _value.productField
          : productField // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      varietyCode: null == varietyCode
          ? _value.varietyCode
          : varietyCode // ignore: cast_nullable_to_non_nullable
              as String,
      varietyDescription: null == varietyDescription
          ? _value.varietyDescription
          : varietyDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldImpl extends _Field {
  _$FieldImpl(
      {this.fieldDescription = '',
      this.fieldCode = '',
      this.harvestField = '',
      this.farmField = '',
      this.productField = '',
      this.productDescription = '',
      this.varietyCode = '',
      this.varietyDescription = ''})
      : super._();

  factory _$FieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldImplFromJson(json);

  @override
  @JsonKey()
  final String fieldDescription;
  @override
  @JsonKey()
  final String fieldCode;
  @override
  @JsonKey()
  final String harvestField;
  @override
  @JsonKey()
  final String farmField;
  @override
  @JsonKey()
  final String productField;
  @override
  @JsonKey()
  final String productDescription;
  @override
  @JsonKey()
  final String varietyCode;
  @override
  @JsonKey()
  final String varietyDescription;

  @override
  String toString() {
    return 'Field(fieldDescription: $fieldDescription, fieldCode: $fieldCode, harvestField: $harvestField, farmField: $farmField, productField: $productField, productDescription: $productDescription, varietyCode: $varietyCode, varietyDescription: $varietyDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldImpl &&
            (identical(other.fieldDescription, fieldDescription) ||
                other.fieldDescription == fieldDescription) &&
            (identical(other.fieldCode, fieldCode) ||
                other.fieldCode == fieldCode) &&
            (identical(other.harvestField, harvestField) ||
                other.harvestField == harvestField) &&
            (identical(other.farmField, farmField) ||
                other.farmField == farmField) &&
            (identical(other.productField, productField) ||
                other.productField == productField) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.varietyCode, varietyCode) ||
                other.varietyCode == varietyCode) &&
            (identical(other.varietyDescription, varietyDescription) ||
                other.varietyDescription == varietyDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fieldDescription,
      fieldCode,
      harvestField,
      farmField,
      productField,
      productDescription,
      varietyCode,
      varietyDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      __$$FieldImplCopyWithImpl<_$FieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldImplToJson(
      this,
    );
  }
}

abstract class _Field extends Field {
  factory _Field(
      {final String fieldDescription,
      final String fieldCode,
      final String harvestField,
      final String farmField,
      final String productField,
      final String productDescription,
      final String varietyCode,
      final String varietyDescription}) = _$FieldImpl;
  _Field._() : super._();

  factory _Field.fromJson(Map<String, dynamic> json) = _$FieldImpl.fromJson;

  @override
  String get fieldDescription;
  @override
  String get fieldCode;
  @override
  String get harvestField;
  @override
  String get farmField;
  @override
  String get productField;
  @override
  String get productDescription;
  @override
  String get varietyCode;
  @override
  String get varietyDescription;
  @override
  @JsonKey(ignore: true)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
