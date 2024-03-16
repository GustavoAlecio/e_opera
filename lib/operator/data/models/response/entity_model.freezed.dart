// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntityModel _$EntityModelFromJson(Map<String, dynamic> json) {
  return _EntityModel.fromJson(json);
}

/// @nodoc
mixin _$EntityModel {
  @HiveField(0)
  @JsonKey(name: 'codEntidade')
  String get entityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'nomeEntidade')
  String get entityName => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'lojEntidade')
  String? get entityStore => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'nomeLojEntidade')
  String? get entityStoreName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityModelCopyWith<EntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityModelCopyWith<$Res> {
  factory $EntityModelCopyWith(
          EntityModel value, $Res Function(EntityModel) then) =
      _$EntityModelCopyWithImpl<$Res, EntityModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codEntidade') String entityCode,
      @HiveField(1) @JsonKey(name: 'nomeEntidade') String entityName,
      @HiveField(2) @JsonKey(name: 'lojEntidade') String? entityStore,
      @HiveField(3) @JsonKey(name: 'nomeLojEntidade') String? entityStoreName});
}

/// @nodoc
class _$EntityModelCopyWithImpl<$Res, $Val extends EntityModel>
    implements $EntityModelCopyWith<$Res> {
  _$EntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = null,
    Object? entityName = null,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
  }) {
    return _then(_value.copyWith(
      entityCode: null == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityModelImplCopyWith<$Res>
    implements $EntityModelCopyWith<$Res> {
  factory _$$EntityModelImplCopyWith(
          _$EntityModelImpl value, $Res Function(_$EntityModelImpl) then) =
      __$$EntityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'codEntidade') String entityCode,
      @HiveField(1) @JsonKey(name: 'nomeEntidade') String entityName,
      @HiveField(2) @JsonKey(name: 'lojEntidade') String? entityStore,
      @HiveField(3) @JsonKey(name: 'nomeLojEntidade') String? entityStoreName});
}

/// @nodoc
class __$$EntityModelImplCopyWithImpl<$Res>
    extends _$EntityModelCopyWithImpl<$Res, _$EntityModelImpl>
    implements _$$EntityModelImplCopyWith<$Res> {
  __$$EntityModelImplCopyWithImpl(
      _$EntityModelImpl _value, $Res Function(_$EntityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = null,
    Object? entityName = null,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
  }) {
    return _then(_$EntityModelImpl(
      entityCode: null == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: entityModelAdapterTypeId, adapterName: 'EntityModelAdapter')
class _$EntityModelImpl extends _EntityModel {
  _$EntityModelImpl(
      {@HiveField(0) @JsonKey(name: 'codEntidade') required this.entityCode,
      @HiveField(1) @JsonKey(name: 'nomeEntidade') required this.entityName,
      @HiveField(2) @JsonKey(name: 'lojEntidade') this.entityStore,
      @HiveField(3) @JsonKey(name: 'nomeLojEntidade') this.entityStoreName})
      : super._();

  factory _$EntityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'codEntidade')
  final String entityCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeEntidade')
  final String entityName;
  @override
  @HiveField(2)
  @JsonKey(name: 'lojEntidade')
  final String? entityStore;
  @override
  @HiveField(3)
  @JsonKey(name: 'nomeLojEntidade')
  final String? entityStoreName;

  @override
  String toString() {
    return 'EntityModel(entityCode: $entityCode, entityName: $entityName, entityStore: $entityStore, entityStoreName: $entityStoreName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityModelImpl &&
            (identical(other.entityCode, entityCode) ||
                other.entityCode == entityCode) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.entityStore, entityStore) ||
                other.entityStore == entityStore) &&
            (identical(other.entityStoreName, entityStoreName) ||
                other.entityStoreName == entityStoreName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, entityCode, entityName, entityStore, entityStoreName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityModelImplCopyWith<_$EntityModelImpl> get copyWith =>
      __$$EntityModelImplCopyWithImpl<_$EntityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityModelImplToJson(
      this,
    );
  }
}

abstract class _EntityModel extends EntityModel {
  factory _EntityModel(
      {@HiveField(0)
      @JsonKey(name: 'codEntidade')
      required final String entityCode,
      @HiveField(1)
      @JsonKey(name: 'nomeEntidade')
      required final String entityName,
      @HiveField(2) @JsonKey(name: 'lojEntidade') final String? entityStore,
      @HiveField(3)
      @JsonKey(name: 'nomeLojEntidade')
      final String? entityStoreName}) = _$EntityModelImpl;
  _EntityModel._() : super._();

  factory _EntityModel.fromJson(Map<String, dynamic> json) =
      _$EntityModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'codEntidade')
  String get entityCode;
  @override
  @HiveField(1)
  @JsonKey(name: 'nomeEntidade')
  String get entityName;
  @override
  @HiveField(2)
  @JsonKey(name: 'lojEntidade')
  String? get entityStore;
  @override
  @HiveField(3)
  @JsonKey(name: 'nomeLojEntidade')
  String? get entityStoreName;
  @override
  @JsonKey(ignore: true)
  _$$EntityModelImplCopyWith<_$EntityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
