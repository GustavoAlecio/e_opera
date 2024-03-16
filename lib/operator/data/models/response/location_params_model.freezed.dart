// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationParamsModel {
  @HiveField(0)
  FarmModel get farm => throw _privateConstructorUsedError;
  @HiveField(1)
  HarvestModel get harvest => throw _privateConstructorUsedError;
  @HiveField(2)
  FieldModel get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationParamsModelCopyWith<LocationParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationParamsModelCopyWith<$Res> {
  factory $LocationParamsModelCopyWith(
          LocationParamsModel value, $Res Function(LocationParamsModel) then) =
      _$LocationParamsModelCopyWithImpl<$Res, LocationParamsModel>;
  @useResult
  $Res call(
      {@HiveField(0) FarmModel farm,
      @HiveField(1) HarvestModel harvest,
      @HiveField(2) FieldModel field});

  $FarmModelCopyWith<$Res> get farm;
  $HarvestModelCopyWith<$Res> get harvest;
  $FieldModelCopyWith<$Res> get field;
}

/// @nodoc
class _$LocationParamsModelCopyWithImpl<$Res, $Val extends LocationParamsModel>
    implements $LocationParamsModelCopyWith<$Res> {
  _$LocationParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farm = null,
    Object? harvest = null,
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as FarmModel,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as HarvestModel,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FarmModelCopyWith<$Res> get farm {
    return $FarmModelCopyWith<$Res>(_value.farm, (value) {
      return _then(_value.copyWith(farm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HarvestModelCopyWith<$Res> get harvest {
    return $HarvestModelCopyWith<$Res>(_value.harvest, (value) {
      return _then(_value.copyWith(harvest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldModelCopyWith<$Res> get field {
    return $FieldModelCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationParamsModelImplCopyWith<$Res>
    implements $LocationParamsModelCopyWith<$Res> {
  factory _$$LocationParamsModelImplCopyWith(_$LocationParamsModelImpl value,
          $Res Function(_$LocationParamsModelImpl) then) =
      __$$LocationParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) FarmModel farm,
      @HiveField(1) HarvestModel harvest,
      @HiveField(2) FieldModel field});

  @override
  $FarmModelCopyWith<$Res> get farm;
  @override
  $HarvestModelCopyWith<$Res> get harvest;
  @override
  $FieldModelCopyWith<$Res> get field;
}

/// @nodoc
class __$$LocationParamsModelImplCopyWithImpl<$Res>
    extends _$LocationParamsModelCopyWithImpl<$Res, _$LocationParamsModelImpl>
    implements _$$LocationParamsModelImplCopyWith<$Res> {
  __$$LocationParamsModelImplCopyWithImpl(_$LocationParamsModelImpl _value,
      $Res Function(_$LocationParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farm = null,
    Object? harvest = null,
    Object? field = null,
  }) {
    return _then(_$LocationParamsModelImpl(
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as FarmModel,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as HarvestModel,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldModel,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: locationParamsModelAdapterTypeId,
    adapterName: 'LocationParamsModelAdapter')
class _$LocationParamsModelImpl extends _LocationParamsModel {
  const _$LocationParamsModelImpl(
      {@HiveField(0) required this.farm,
      @HiveField(1) required this.harvest,
      @HiveField(2) required this.field})
      : super._();

  @override
  @HiveField(0)
  final FarmModel farm;
  @override
  @HiveField(1)
  final HarvestModel harvest;
  @override
  @HiveField(2)
  final FieldModel field;

  @override
  String toString() {
    return 'LocationParamsModel(farm: $farm, harvest: $harvest, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationParamsModelImpl &&
            (identical(other.farm, farm) || other.farm == farm) &&
            (identical(other.harvest, harvest) || other.harvest == harvest) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, farm, harvest, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationParamsModelImplCopyWith<_$LocationParamsModelImpl> get copyWith =>
      __$$LocationParamsModelImplCopyWithImpl<_$LocationParamsModelImpl>(
          this, _$identity);
}

abstract class _LocationParamsModel extends LocationParamsModel {
  const factory _LocationParamsModel(
          {@HiveField(0) required final FarmModel farm,
          @HiveField(1) required final HarvestModel harvest,
          @HiveField(2) required final FieldModel field}) =
      _$LocationParamsModelImpl;
  const _LocationParamsModel._() : super._();

  @override
  @HiveField(0)
  FarmModel get farm;
  @override
  @HiveField(1)
  HarvestModel get harvest;
  @override
  @HiveField(2)
  FieldModel get field;
  @override
  @JsonKey(ignore: true)
  _$$LocationParamsModelImplCopyWith<_$LocationParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
