// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationParamsImpl _$$LocationParamsImplFromJson(Map<String, dynamic> json) =>
    _$LocationParamsImpl(
      farm: Farm.fromJson(json['farm'] as Map<String, dynamic>),
      harvest: Harvest.fromJson(json['harvest'] as Map<String, dynamic>),
      field: Field.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationParamsImplToJson(
        _$LocationParamsImpl instance) =>
    <String, dynamic>{
      'farm': instance.farm,
      'harvest': instance.harvest,
      'field': instance.field,
    };
