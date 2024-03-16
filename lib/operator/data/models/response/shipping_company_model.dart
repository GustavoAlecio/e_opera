// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/shipping_company.dart';

part 'shipping_company_model.freezed.dart';
part 'shipping_company_model.g.dart';

///
/// Model params to farm
///
const int shippingCompanyModelAdapterTypeId = 7;

@freezed
class ShippingCompanyModel with _$ShippingCompanyModel {
  const ShippingCompanyModel._();

  ///
  /// [ShippingCompanyModel] default constructor
  ///
  @HiveType(
      typeId: shippingCompanyModelAdapterTypeId,
      adapterName: 'ShippingCompanyModelAdapter')
  factory ShippingCompanyModel({
    @HiveField(0)
    @JsonKey(name: 'codTransportadora')
    required String shippingCompanyCode,
    @HiveField(1)
    @JsonKey(name: 'nreduzTransportadora')
    required String shippingCompanyReducedName,
    @HiveField(2)
    @JsonKey(name: 'nomeTransportadora')
    required String shippingCompanyName,
  }) = _ShippingCompanyModel;

  factory ShippingCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingCompanyModelFromJson(json);

  factory ShippingCompanyModel.fromEntity(
    ShippingCompany entity,
  ) {
    return ShippingCompanyModel(
      shippingCompanyCode: entity.shippingCompanyCode,
      shippingCompanyReducedName: entity.shippingCompanyReducedName,
      shippingCompanyName: entity.shippingCompanyName,
    );
  }

  ///Creates a [ShippingCompany] from a [ShippingCompanyModel].
  ShippingCompany toEntity() {
    return ShippingCompany(
      shippingCompanyCode: shippingCompanyCode as String,
      shippingCompanyReducedName: shippingCompanyReducedName as String,
      shippingCompanyName: shippingCompanyName as String,
    );
  }
}
