// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverFormImpl _$$DriverFormImplFromJson(Map<String, dynamic> json) =>
    _$DriverFormImpl(
      driverCode: json['driverCode'] as String? ?? '',
      driverName: json['driverName'] as String? ?? '',
      driverReducedName: json['driverReducedName'] as String? ?? '',
      driverCpf: json['driverCpf'] as String? ?? '',
      truckPlate: json['truckPlate'] as String? ?? '',
      shippingCompanyCode: json['shippingCompanyCode'] as String? ?? '',
      shippingCompanyName: json['shippingCompanyName'] as String? ?? '',
    );

Map<String, dynamic> _$$DriverFormImplToJson(_$DriverFormImpl instance) =>
    <String, dynamic>{
      'driverCode': instance.driverCode,
      'driverName': instance.driverName,
      'driverReducedName': instance.driverReducedName,
      'driverCpf': instance.driverCpf,
      'truckPlate': instance.truckPlate,
      'shippingCompanyCode': instance.shippingCompanyCode,
      'shippingCompanyName': instance.shippingCompanyName,
    };
