// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subsidiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubsidiaryModel _$SubsidiaryModelFromJson(Map<String, dynamic> json) {
  return _SubsidiaryModel.fromJson(json);
}

/// @nodoc
mixin _$SubsidiaryModel {
  @HiveField(0)
  @JsonKey(name: 'codFilial')
  String get subsidiaryCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nomeFilial')
  String get subsidiaryName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'empresaFilial')
  String? get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubsidiaryModelCopyWith<SubsidiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubsidiaryModelCopyWith<$Res> {
  factory $SubsidiaryModelCopyWith(
          SubsidiaryModel value, $Res Function(SubsidiaryModel) then) =
      _$SubsidiaryModelCopyWithImpl<$Res, SubsidiaryModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codFilial') String subsidiaryCode,
      @HiveField(1) @JsonKey(name: 'nomeFilial') String subsidiaryName,
      @HiveField(2) @JsonKey(name: 'empresaFilial') String? companyName});
}

/// @nodoc
class _$SubsidiaryModelCopyWithImpl<$Res, $Val extends SubsidiaryModel>
    implements $SubsidiaryModelCopyWith<$Res> {
  _$SubsidiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subsidiaryCode = null,
    Object? subsidiaryName = null,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      subsidiaryCode: null == subsidiaryCode
          ? _value.subsidiaryCode
          : subsidiaryCode // ignore: cast_nullable_to_non_nullable
              as String,
      subsidiaryName: null == subsidiaryName
          ? _value.subsidiaryName
          : subsidiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubsidiaryModelImplCopyWith<$Res>
    implements $SubsidiaryModelCopyWith<$Res> {
  factory _$$SubsidiaryModelImplCopyWith(_$SubsidiaryModelImpl value,
          $Res Function(_$SubsidiaryModelImpl) then) =
      __$$SubsidiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codFilial') String subsidiaryCode,
      @HiveField(1) @JsonKey(name: 'nomeFilial') String subsidiaryName,
      @HiveField(2) @JsonKey(name: 'empresaFilial') String? companyName});
}

/// @nodoc
class __$$SubsidiaryModelImplCopyWithImpl<$Res>
    extends _$SubsidiaryModelCopyWithImpl<$Res, _$SubsidiaryModelImpl>
    implements _$$SubsidiaryModelImplCopyWith<$Res> {
  __$$SubsidiaryModelImplCopyWithImpl(
      _$SubsidiaryModelImpl _value, $Res Function(_$SubsidiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subsidiaryCode = null,
    Object? subsidiaryName = null,
    Object? companyName = freezed,
  }) {
    return _then(_$SubsidiaryModelImpl(
      subsidiaryCode: null == subsidiaryCode
          ? _value.subsidiaryCode
          : subsidiaryCode // ignore: cast_nullable_to_non_nullable
              as String,
      subsidiaryName: null == subsidiaryName
          ? _value.subsidiaryName
          : subsidiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: subsidiaryModelAdapterTypeId, adapterName: 'SubsidiaryModelAdapter')
class _$SubsidiaryModelImpl extends _SubsidiaryModel {
  _$SubsidiaryModelImpl(
      {@HiveField(0) @JsonKey(name: 'codFilial') required this.subsidiaryCode,
      @HiveField(1) @JsonKey(name: 'nomeFilial') required this.subsidiaryName,
      @HiveField(2) @JsonKey(name: 'empresaFilial') this.companyName})
      : super._();

  factory _$SubsidiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubsidiaryModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codFilial')
  final String subsidiaryCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeFilial')
  final String subsidiaryName;
  @override
  @HiveField(2)
  @JsonKey(name: 'empresaFilial')
  final String? companyName;

  @override
  String toString() {
    return 'SubsidiaryModel(subsidiaryCode: $subsidiaryCode, subsidiaryName: $subsidiaryName, companyName: $companyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubsidiaryModelImpl &&
            (identical(other.subsidiaryCode, subsidiaryCode) ||
                other.subsidiaryCode == subsidiaryCode) &&
            (identical(other.subsidiaryName, subsidiaryName) ||
                other.subsidiaryName == subsidiaryName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subsidiaryCode, subsidiaryName, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubsidiaryModelImplCopyWith<_$SubsidiaryModelImpl> get copyWith =>
      __$$SubsidiaryModelImplCopyWithImpl<_$SubsidiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubsidiaryModelImplToJson(
      this,
    );
  }
}

abstract class _SubsidiaryModel extends SubsidiaryModel {
  factory _SubsidiaryModel(
      {@HiveField(0)
      @JsonKey(name: 'codFilial')
      required final String subsidiaryCode,
      @HiveField(1)
      @JsonKey(name: 'nomeFilial')
      required final String subsidiaryName,
      @HiveField(2)
      @JsonKey(name: 'empresaFilial')
      final String? companyName}) = _$SubsidiaryModelImpl;
  _SubsidiaryModel._() : super._();

  factory _SubsidiaryModel.fromJson(Map<String, dynamic> json) =
      _$SubsidiaryModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codFilial')
  String get subsidiaryCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeFilial')
  String get subsidiaryName;
  @override
  @HiveField(2)
  @JsonKey(name: 'empresaFilial')
  String? get companyName;
  @override
  @JsonKey(ignore: true)
  _$$SubsidiaryModelImplCopyWith<_$SubsidiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
