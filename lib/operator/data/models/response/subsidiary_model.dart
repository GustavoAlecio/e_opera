// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/destination.dart';

part 'subsidiary_model.freezed.dart';
part 'subsidiary_model.g.dart';

///
/// Model params to farm
///
const int subsidiaryModelAdapterTypeId = 8;

@freezed
class SubsidiaryModel with _$SubsidiaryModel {
  const SubsidiaryModel._();

  ///
  /// [SubsidiaryModel] default constructor
  ///
  @HiveType(
      typeId: subsidiaryModelAdapterTypeId,
      adapterName: 'SubsidiaryModelAdapter')
  factory SubsidiaryModel({
    @HiveField(0) @JsonKey(name: 'codFilial') required String subsidiaryCode,
    @HiveField(1) @JsonKey(name: 'nomeFilial') required String subsidiaryName,
    @HiveField(2) @JsonKey(name: 'empresaFilial') String? companyName,
  }) = _SubsidiaryModel;

  factory SubsidiaryModel.fromJson(Map<String, dynamic> json) =>
      _$SubsidiaryModelFromJson(json);

  factory SubsidiaryModel.fromEntity(
    Destination entity,
  ) {
    return SubsidiaryModel(
      subsidiaryCode: entity.destinationCode,
      subsidiaryName: entity.destinationName,
      companyName: '',
    );
  }

  ///Creates a [Subsidiary] from a [SubsidiaryModel].
  Destination toEntity() {
    return Destination(
      destinationCode: subsidiaryCode as String,
      destinationName: subsidiaryName as String,
    );
  }
}
