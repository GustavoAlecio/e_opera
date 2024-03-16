// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/farm.dart';

part 'farm_model.freezed.dart';
part 'farm_model.g.dart';

///
/// Model params to farm
///

const int farmModelAdapterTypeId = 3;

@freezed
class FarmModel with _$FarmModel {
  const FarmModel._();

  ///
  /// [FarmModel] default constructor
  ///
  @HiveType(typeId: farmModelAdapterTypeId, adapterName: 'FarmModelAdapter')
  const factory FarmModel({
    @HiveField(0) @JsonKey(name: 'codFazenda') required String farmCode,
    @HiveField(1) @JsonKey(name: 'nomeFazenda') required String farmName,
    @HiveField(2) @JsonKey(name: 'codFilial') required String branchCode,
    @HiveField(3) @JsonKey(name: 'nomeFilial') required String branchName,
  }) = _FarmModel;

  factory FarmModel.fromJson(Map<String, dynamic> json) =>
      _$FarmModelFromJson(json);

  factory FarmModel.fromEntity(
    Farm entity,
  ) {
    return FarmModel(
      farmCode: entity.farmCode,
      farmName: entity.farmName,
      branchCode: entity.branchCode,
      branchName: entity.branchName,
    );
  }

  ///Creates a [Farm] from a [FarmModel].
  Farm toEntity() {
    return Farm(
      branchCode: branchCode,
      branchName: branchName,
      farmCode: farmCode,
      farmName: farmName,
    );
  }
}
