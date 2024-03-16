import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/location_params_model.dart';

abstract class ILocationParamsDatasource {
  Future<List<LocationParamsModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<LocationParamsModel> items);
  FutureOr<void> delete(int id);
}
