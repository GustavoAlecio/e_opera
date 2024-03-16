// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FarmModel _$FarmModelFromJson(Map<String, dynamic> json) {
  return _FarmModel.fromJson(json);
}

/// @nodoc
mixin _$FarmModel {
  @HiveField(0)
  @JsonKey(name: 'codFazenda')
  String get farmCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nomeFazenda')
  String get farmName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'codFilial')
  String get branchCode => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'nomeFilial')
  String get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmModelCopyWith<FarmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmModelCopyWith<$Res> {
  factory $FarmModelCopyWith(FarmModel value, $Res Function(FarmModel) then) =
      _$FarmModelCopyWithImpl<$Res, FarmModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codFazenda') String farmCode,
      @HiveField(1) @JsonKey(name: 'nomeFazenda') String farmName,
      @HiveField(2) @JsonKey(name: 'codFilial') String branchCode,
      @HiveField(3) @JsonKey(name: 'nomeFilial') String branchName});
}

/// @nodoc
class _$FarmModelCopyWithImpl<$Res, $Val extends FarmModel>
    implements $FarmModelCopyWith<$Res> {
  _$FarmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmCode = null,
    Object? farmName = null,
    Object? branchCode = null,
    Object? branchName = null,
  }) {
    return _then(_value.copyWith(
      farmCode: null == farmCode
          ? _value.farmCode
          : farmCode // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      branchCode: null == branchCode
          ? _value.branchCode
          : branchCode // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmModelImplCopyWith<$Res>
    implements $FarmModelCopyWith<$Res> {
  factory _$$FarmModelImplCopyWith(
          _$FarmModelImpl value, $Res Function(_$FarmModelImpl) then) =
      __$$FarmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codFazenda') String farmCode,
      @HiveField(1) @JsonKey(name: 'nomeFazenda') String farmName,
      @HiveField(2) @JsonKey(name: 'codFilial') String branchCode,
      @HiveField(3) @JsonKey(name: 'nomeFilial') String branchName});
}

/// @nodoc
class __$$FarmModelImplCopyWithImpl<$Res>
    extends _$FarmModelCopyWithImpl<$Res, _$FarmModelImpl>
    implements _$$FarmModelImplCopyWith<$Res> {
  __$$FarmModelImplCopyWithImpl(
      _$FarmModelImpl _value, $Res Function(_$FarmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmCode = null,
    Object? farmName = null,
    Object? branchCode = null,
    Object? branchName = null,
  }) {
    return _then(_$FarmModelImpl(
      farmCode: null == farmCode
          ? _value.farmCode
          : farmCode // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      branchCode: null == branchCode
          ? _value.branchCode
          : branchCode // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: farmModelAdapterTypeId, adapterName: 'FarmModelAdapter')
class _$FarmModelImpl extends _FarmModel {
  const _$FarmModelImpl(
      {@HiveField(0) @JsonKey(name: 'codFazenda') required this.farmCode,
      @HiveField(1) @JsonKey(name: 'nomeFazenda') required this.farmName,
      @HiveField(2) @JsonKey(name: 'codFilial') required this.branchCode,
      @HiveField(3) @JsonKey(name: 'nomeFilial') required this.branchName})
      : super._();

  factory _$FarmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codFazenda')
  final String farmCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeFazenda')
  final String farmName;
  @override
  @HiveField(2)
  @JsonKey(name: 'codFilial')
  final String branchCode;
  @override
  @HiveField(3)
  @JsonKey(name: 'nomeFilial')
  final String branchName;

  @override
  String toString() {
    return 'FarmModel(farmCode: $farmCode, farmName: $farmName, branchCode: $branchCode, branchName: $branchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmModelImpl &&
            (identical(other.farmCode, farmCode) ||
                other.farmCode == farmCode) &&
            (identical(other.farmName, farmName) ||
                other.farmName == farmName) &&
            (identical(other.branchCode, branchCode) ||
                other.branchCode == branchCode) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, farmCode, farmName, branchCode, branchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmModelImplCopyWith<_$FarmModelImpl> get copyWith =>
      __$$FarmModelImplCopyWithImpl<_$FarmModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmModelImplToJson(
      this,
    );
  }
}

abstract class _FarmModel extends FarmModel {
  const factory _FarmModel(
      {@HiveField(0)
      @JsonKey(name: 'codFazenda')
      required final String farmCode,
      @HiveField(1)
      @JsonKey(name: 'nomeFazenda')
      required final String farmName,
      @HiveField(2)
      @JsonKey(name: 'codFilial')
      required final String branchCode,
      @HiveField(3)
      @JsonKey(name: 'nomeFilial')
      required final String branchName}) = _$FarmModelImpl;
  const _FarmModel._() : super._();

  factory _FarmModel.fromJson(Map<String, dynamic> json) =
      _$FarmModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codFazenda')
  String get farmCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeFazenda')
  String get farmName;
  @override
  @HiveField(2)
  @JsonKey(name: 'codFilial')
  String get branchCode;
  @override
  @HiveField(3)
  @JsonKey(name: 'nomeFilial')
  String get branchName;
  @override
  @JsonKey(ignore: true)
  _$$FarmModelImplCopyWith<_$FarmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
