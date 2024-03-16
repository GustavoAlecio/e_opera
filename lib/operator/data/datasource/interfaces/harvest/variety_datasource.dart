import 'dart:async';
import '../../../../../core/core.dart';
import '../../../models/response/variety_model.dart';

abstract class IVarietyDatasource {
  Future<List<VarietyModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<VarietyModel> items);
  FutureOr<void> delete(int id);
}
