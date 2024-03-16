// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmImpl _$$FarmImplFromJson(Map<String, dynamic> json) => _$FarmImpl(
      farmCode: json['farmCode'] as String? ?? '',
      farmName: json['farmName'] as String? ?? '',
      branchCode: json['branchCode'] as String? ?? '',
      branchName: json['branchName'] as String? ?? '',
    );

Map<String, dynamic> _$$FarmImplToJson(_$FarmImpl instance) =>
    <String, dynamic>{
      'farmCode': instance.farmCode,
      'farmName': instance.farmName,
      'branchCode': instance.branchCode,
      'branchName': instance.branchName,
    };
