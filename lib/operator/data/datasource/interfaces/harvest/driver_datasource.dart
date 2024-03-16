import 'dart:async';

import '../../../../../core/core.dart';
import '../../../data.dart';
import '../../../models/response/driver_model.dart';

abstract class IDriverDatasource {
  Future<List<DriverModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<DriverModel> items);
  FutureOr<void> delete(int id);
}
