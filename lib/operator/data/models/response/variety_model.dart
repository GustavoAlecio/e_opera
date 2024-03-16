// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/variety.dart';

part 'variety_model.freezed.dart';
part 'variety_model.g.dart';

///
/// Model params to farm
///
const int varietyModelAdapterTypeId = 9;

@freezed
class VarietyModel with _$VarietyModel {
  const VarietyModel._();

  ///
  /// [VarietyModel] default constructor
  ///
  @HiveType(
      typeId: varietyModelAdapterTypeId, adapterName: 'VarietyModelAdapter')
  factory VarietyModel({
    @HiveField(0) @JsonKey(name: 'codVariedade') required String varietyCode,
    @HiveField(1)
    @JsonKey(name: 'desVariedade')
    required String varietyDescription,
    @HiveField(2) @JsonKey(name: 'codProduto') required String productCode,
    @HiveField(3)
    @JsonKey(name: 'desProduto')
    required String productDescription,
  }) = _VarietyModel;

  factory VarietyModel.fromJson(Map<String, dynamic> json) =>
      _$VarietyModelFromJson(json);

  factory VarietyModel.fromEntity(
    Variety entity,
  ) {
    return VarietyModel(
      varietyCode: entity.varietyCode,
      varietyDescription: entity.varietyDescription,
      productCode: entity.productCode,
      productDescription: entity.productDescription,
    );
  }

  ///Creates a [Variety] from a [VarietyModel].
  Variety toEntity() {
    return Variety(
      varietyCode: varietyCode as String,
      varietyDescription: varietyDescription as String,
      productCode: productCode as String,
      productDescription: productDescription as String,
    );
  }
}
