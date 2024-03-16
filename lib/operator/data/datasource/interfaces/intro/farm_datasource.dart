import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/farm_model.dart';

abstract class IFarmDatasource {
  Future<List<FarmModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<FarmModel> items);
  FutureOr<void> delete(int id);
}
