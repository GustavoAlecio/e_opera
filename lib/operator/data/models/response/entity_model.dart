// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/destination.dart';

part 'entity_model.freezed.dart';
part 'entity_model.g.dart';

///
/// Model params to farm
///

const int entityModelAdapterTypeId = 2;

@freezed
class EntityModel with _$EntityModel {
  const EntityModel._();

  ///
  /// [EntityModel] default constructor
  ///

  @HiveType(typeId: entityModelAdapterTypeId, adapterName: 'EntityModelAdapter')
  factory EntityModel({
    @HiveField(0) @JsonKey(name: 'codEntidade') required String entityCode,
    @HiveField(1) @JsonKey(name: 'nomeEntidade') required String entityName,
    @HiveField(2) @JsonKey(name: 'lojEntidade') String? entityStore,
    @HiveField(3) @JsonKey(name: 'nomeLojEntidade') String? entityStoreName,
  }) = _EntityModel;

  factory EntityModel.fromJson(Map<String, dynamic> json) =>
      _$EntityModelFromJson(json);

  factory EntityModel.fromEntity(
    Destination entity,
  ) {
    return EntityModel(
      entityCode: entity.destinationCode,
      entityName: entity.destinationName,
    );
  }

  ///Creates a [entity] from a [EntityModel].
  Destination toEntity() {
    return Destination(
      destinationCode: entityCode as String,
      destinationName: entityName as String,
    );
  }
}
