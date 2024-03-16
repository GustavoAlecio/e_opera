import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/vehicle_model.dart';

abstract class IVehicleDatasource {
  Future<List<VehicleModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<VehicleModel> items);
  FutureOr<void> delete(int id);
}
