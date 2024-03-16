import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/vehicle.dart';
import '../repositories/vehicle_repository.dart';

/// Interface to login
abstract class IGetVehiclesUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, List<Vehicle>>> call();
}

/// Implementation of [ILoginUsecase]
class GetVehiclesUsecase implements IGetVehiclesUsecase {
  final IVehicleRepository _repository;

  /// Constructor of [GetVehiclesUsecase]
  GetVehiclesUsecase(this._repository);
  @override
  Future<Either<Failure, List<Vehicle>>> call() async {
    return await _repository.getVehicles();
  }
}
