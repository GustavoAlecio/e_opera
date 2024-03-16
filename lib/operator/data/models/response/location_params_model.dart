// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/entities/driver.dart';
import '../../../domain/entities/localization_params.dart';
import '../../data.dart';

part 'location_params_model.freezed.dart';
part 'location_params_model.g.dart';

///
/// Model params to farm
///
const int locationParamsModelAdapterTypeId = 11;

@freezed
class LocationParamsModel with _$LocationParamsModel {
  const LocationParamsModel._();

  ///
  /// [LocationParamsModel] default constructor
  ///
  @HiveType(
      typeId: locationParamsModelAdapterTypeId,
      adapterName: 'LocationParamsModelAdapter')
  const factory LocationParamsModel({
    @HiveField(0) required FarmModel farm,
    @HiveField(1) required HarvestModel harvest,
    @HiveField(2) required FieldModel field,
  }) = _LocationParamsModel;

  factory LocationParamsModel.fromEntity(
    LocationParams entity,
  ) {
    return LocationParamsModel(
      farm: FarmModel.fromEntity(entity.farm),
      harvest: HarvestModel.fromEntity(entity.harvest),
      field: FieldModel.fromEntity(entity.field),
    );
  }

  ///Creates a [Driver] from a [LocationParamsModel].
  LocationParams toEntity() {
    return LocationParams(
      farm: farm.toEntity(),
      harvest: harvest.toEntity(),
      field: field.toEntity(),
    );
  }
}
