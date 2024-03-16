// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harvest_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HarvestFormImpl _$$HarvestFormImplFromJson(Map<String, dynamic> json) =>
    _$HarvestFormImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      location: json['location'] == null
          ? null
          : LocationParams.fromJson(json['location'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductForm.fromJson(json['product'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : DriverForm.fromJson(json['driver'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : DestinationForm.fromJson(
              json['destination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HarvestFormImplToJson(_$HarvestFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'location': instance.location,
      'product': instance.product,
      'driver': instance.driver,
      'destination': instance.destination,
    };
