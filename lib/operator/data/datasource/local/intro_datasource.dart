import 'dart:async';

import '../../data.dart';

abstract class IIntroLocalDatasource {
  /// Get all saved [LoginModel]
  Future<List<FarmModel>> getFarms({int id});
  Future<List<HarvestModel>> getHarvests({int id});
  Future<List<FieldModel>> getFields({int id});

  /// delete a [LoginModel] by the given id
  FutureOr<void> deleteFarms(int id);
  FutureOr<void> deleteHarvests(int id);
  FutureOr<void> deleteFields(int id);

  /// Clear the entire storage
  FutureOr<void> clearFarm() {}
  FutureOr<void> clearHarvests() {}
  FutureOr<void> clearFields() {}

  /// save a [LoginModel]
  FutureOr<void> saveFarms(List<FarmModel> items);
  FutureOr<void> saveHarvests(List<HarvestModel> items);
  FutureOr<void> saveFields(List<FieldModel> items);
}
