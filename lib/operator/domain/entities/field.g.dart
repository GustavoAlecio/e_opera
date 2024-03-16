// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldImpl _$$FieldImplFromJson(Map<String, dynamic> json) => _$FieldImpl(
      fieldDescription: json['fieldDescription'] as String? ?? '',
      fieldCode: json['fieldCode'] as String? ?? '',
      harvestField: json['harvestField'] as String? ?? '',
      farmField: json['farmField'] as String? ?? '',
      productField: json['productField'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      varietyCode: json['varietyCode'] as String? ?? '',
      varietyDescription: json['varietyDescription'] as String? ?? '',
    );

Map<String, dynamic> _$$FieldImplToJson(_$FieldImpl instance) =>
    <String, dynamic>{
      'fieldDescription': instance.fieldDescription,
      'fieldCode': instance.fieldCode,
      'harvestField': instance.harvestField,
      'farmField': instance.farmField,
      'productField': instance.productField,
      'productDescription': instance.productDescription,
      'varietyCode': instance.varietyCode,
      'varietyDescription': instance.varietyDescription,
    };
