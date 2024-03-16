// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductFormImpl _$$ProductFormImplFromJson(Map<String, dynamic> json) =>
    _$ProductFormImpl(
      productCode: json['productCode'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      productVariety: json['productVariety'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      unit: json['unit'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductFormImplToJson(_$ProductFormImpl instance) =>
    <String, dynamic>{
      'productCode': instance.productCode,
      'productDescription': instance.productDescription,
      'productVariety': instance.productVariety,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };
