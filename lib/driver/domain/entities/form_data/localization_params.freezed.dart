// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationParams _$LocationParamsFromJson(Map<String, dynamic> json) {
  return _LocationParams.fromJson(json);
}

/// @nodoc
mixin _$LocationParams {
  Farm get farm => throw _privateConstructorUsedError;
  Harvest get harvest => throw _privateConstructorUsedError;
  Field get field => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationParamsCopyWith<LocationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationParamsCopyWith<$Res> {
  factory $LocationParamsCopyWith(
          LocationParams value, $Res Function(LocationParams) then) =
      _$LocationParamsCopyWithImpl<$Res, LocationParams>;
  @useResult
  $Res call({Farm farm, Harvest harvest, Field field});

  $FarmCopyWith<$Res> get farm;
  $HarvestCopyWith<$Res> get harvest;
  $FieldCopyWith<$Res> get field;
}

/// @nodoc
class _$LocationParamsCopyWithImpl<$Res, $Val extends LocationParams>
    implements $LocationParamsCopyWith<$Res> {
  _$LocationParamsCopyWithImpl(this._value, this._then);

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
              as Farm,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as Harvest,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Field,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FarmCopyWith<$Res> get farm {
    return $FarmCopyWith<$Res>(_value.farm, (value) {
      return _then(_value.copyWith(farm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HarvestCopyWith<$Res> get harvest {
    return $HarvestCopyWith<$Res>(_value.harvest, (value) {
      return _then(_value.copyWith(harvest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res> get field {
    return $FieldCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationParamsImplCopyWith<$Res>
    implements $LocationParamsCopyWith<$Res> {
  factory _$$LocationParamsImplCopyWith(_$LocationParamsImpl value,
          $Res Function(_$LocationParamsImpl) then) =
      __$$LocationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Farm farm, Harvest harvest, Field field});

  @override
  $FarmCopyWith<$Res> get farm;
  @override
  $HarvestCopyWith<$Res> get harvest;
  @override
  $FieldCopyWith<$Res> get field;
}

/// @nodoc
class __$$LocationParamsImplCopyWithImpl<$Res>
    extends _$LocationParamsCopyWithImpl<$Res, _$LocationParamsImpl>
    implements _$$LocationParamsImplCopyWith<$Res> {
  __$$LocationParamsImplCopyWithImpl(
      _$LocationParamsImpl _value, $Res Function(_$LocationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farm = null,
    Object? harvest = null,
    Object? field = null,
  }) {
    return _then(_$LocationParamsImpl(
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as Farm,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as Harvest,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Field,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationParamsImpl extends _LocationParams {
  _$LocationParamsImpl(
      {required this.farm, required this.harvest, required this.field})
      : super._();

  factory _$LocationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationParamsImplFromJson(json);

  @override
  final Farm farm;
  @override
  final Harvest harvest;
  @override
  final Field field;

  @override
  String toString() {
    return 'LocationParams(farm: $farm, harvest: $harvest, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationParamsImpl &&
            (identical(other.farm, farm) || other.farm == farm) &&
            (identical(other.harvest, harvest) || other.harvest == harvest) &&
            (identical(other.field, field) || other.field == field));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, farm, harvest, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationParamsImplCopyWith<_$LocationParamsImpl> get copyWith =>
      __$$LocationParamsImplCopyWithImpl<_$LocationParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationParamsImplToJson(
      this,
    );
  }
}

abstract class _LocationParams extends LocationParams {
  factory _LocationParams(
      {required final Farm farm,
      required final Harvest harvest,
      required final Field field}) = _$LocationParamsImpl;
  _LocationParams._() : super._();

  factory _LocationParams.fromJson(Map<String, dynamic> json) =
      _$LocationParamsImpl.fromJson;

  @override
  Farm get farm;
  @override
  Harvest get harvest;
  @override
  Field get field;
  @override
  @JsonKey(ignore: true)
  _$$LocationParamsImplCopyWith<_$LocationParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
