// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FieldModel _$FieldModelFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
mixin _$FieldModel {
  @HiveField(0)
  @JsonKey(name: 'desTalhao')
  String get fieldDescription => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'codTalhao')
  String get fieldCode => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'safraTalhao')
  String get harvestField => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'fazendaTalhao')
  String get farmField => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'produtoTalhao')
  String get productField => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'desProduto')
  String get productDescription => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'codVariedade')
  String get varietyCode => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'desVariedade')
  String get varietyDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldModelCopyWith<FieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldModelCopyWith<$Res> {
  factory $FieldModelCopyWith(
          FieldModel value, $Res Function(FieldModel) then) =
      _$FieldModelCopyWithImpl<$Res, FieldModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'desTalhao') String fieldDescription,
      @HiveField(1) @JsonKey(name: 'codTalhao') String fieldCode,
      @HiveField(2) @JsonKey(name: 'safraTalhao') String harvestField,
      @HiveField(3) @JsonKey(name: 'fazendaTalhao') String farmField,
      @HiveField(4) @JsonKey(name: 'produtoTalhao') String productField,
      @HiveField(5) @JsonKey(name: 'desProduto') String productDescription,
      @HiveField(6) @JsonKey(name: 'codVariedade') String varietyCode,
      @HiveField(7) @JsonKey(name: 'desVariedade') String varietyDescription});
}

/// @nodoc
class _$FieldModelCopyWithImpl<$Res, $Val extends FieldModel>
    implements $FieldModelCopyWith<$Res> {
  _$FieldModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FieldImplCopyWith<$Res> implements $FieldModelCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'desTalhao') String fieldDescription,
      @HiveField(1) @JsonKey(name: 'codTalhao') String fieldCode,
      @HiveField(2) @JsonKey(name: 'safraTalhao') String harvestField,
      @HiveField(3) @JsonKey(name: 'fazendaTalhao') String farmField,
      @HiveField(4) @JsonKey(name: 'produtoTalhao') String productField,
      @HiveField(5) @JsonKey(name: 'desProduto') String productDescription,
      @HiveField(6) @JsonKey(name: 'codVariedade') String varietyCode,
      @HiveField(7) @JsonKey(name: 'desVariedade') String varietyDescription});
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldModelCopyWithImpl<$Res, _$FieldImpl>
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
@HiveType(typeId: fieldModelAdapterTypeId, adapterName: 'FieldModelAdapter')
class _$FieldImpl extends _Field {
  _$FieldImpl(
      {@HiveField(0) @JsonKey(name: 'desTalhao') required this.fieldDescription,
      @HiveField(1) @JsonKey(name: 'codTalhao') required this.fieldCode,
      @HiveField(2) @JsonKey(name: 'safraTalhao') required this.harvestField,
      @HiveField(3) @JsonKey(name: 'fazendaTalhao') required this.farmField,
      @HiveField(4) @JsonKey(name: 'produtoTalhao') required this.productField,
      @HiveField(5)
      @JsonKey(name: 'desProduto')
      required this.productDescription,
      @HiveField(6) @JsonKey(name: 'codVariedade') required this.varietyCode,
      @HiveField(7)
      @JsonKey(name: 'desVariedade')
      required this.varietyDescription})
      : super._();

  factory _$FieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'desTalhao')
  final String fieldDescription;
  @override
  @HiveField(1)
  @JsonKey(name: 'codTalhao')
  final String fieldCode;
  @override
  @HiveField(2)
  @JsonKey(name: 'safraTalhao')
  final String harvestField;
  @override
  @HiveField(3)
  @JsonKey(name: 'fazendaTalhao')
  final String farmField;
  @override
  @HiveField(4)
  @JsonKey(name: 'produtoTalhao')
  final String productField;
  @override
  @HiveField(5)
  @JsonKey(name: 'desProduto')
  final String productDescription;
  @override
  @HiveField(6)
  @JsonKey(name: 'codVariedade')
  final String varietyCode;
  @override
  @HiveField(7)
  @JsonKey(name: 'desVariedade')
  final String varietyDescription;

  @override
  String toString() {
    return 'FieldModel(fieldDescription: $fieldDescription, fieldCode: $fieldCode, harvestField: $harvestField, farmField: $farmField, productField: $productField, productDescription: $productDescription, varietyCode: $varietyCode, varietyDescription: $varietyDescription)';
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

abstract class _Field extends FieldModel {
  factory _Field(
      {@HiveField(0)
      @JsonKey(name: 'desTalhao')
      required final String fieldDescription,
      @HiveField(1) @JsonKey(name: 'codTalhao') required final String fieldCode,
      @HiveField(2)
      @JsonKey(name: 'safraTalhao')
      required final String harvestField,
      @HiveField(3)
      @JsonKey(name: 'fazendaTalhao')
      required final String farmField,
      @HiveField(4)
      @JsonKey(name: 'produtoTalhao')
      required final String productField,
      @HiveField(5)
      @JsonKey(name: 'desProduto')
      required final String productDescription,
      @HiveField(6)
      @JsonKey(name: 'codVariedade')
      required final String varietyCode,
      @HiveField(7)
      @JsonKey(name: 'desVariedade')
      required final String varietyDescription}) = _$FieldImpl;
  _Field._() : super._();

  factory _Field.fromJson(Map<String, dynamic> json) = _$FieldImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'desTalhao')
  String get fieldDescription;
  @override
  @HiveField(1)
  @JsonKey(name: 'codTalhao')
  String get fieldCode;
  @override
  @HiveField(2)
  @JsonKey(name: 'safraTalhao')
  String get harvestField;
  @override
  @HiveField(3)
  @JsonKey(name: 'fazendaTalhao')
  String get farmField;
  @override
  @HiveField(4)
  @JsonKey(name: 'produtoTalhao')
  String get productField;
  @override
  @HiveField(5)
  @JsonKey(name: 'desProduto')
  String get productDescription;
  @override
  @HiveField(6)
  @JsonKey(name: 'codVariedade')
  String get varietyCode;
  @override
  @HiveField(7)
  @JsonKey(name: 'desVariedade')
  String get varietyDescription;
  @override
  @JsonKey(ignore: true)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
