import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/harvest_model.dart';

abstract class IHarvestDatasource {
  Future<List<HarvestModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<HarvestModel> items);
  FutureOr<void> delete(int id);
}
