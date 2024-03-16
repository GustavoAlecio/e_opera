import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/vehicle.dart';
import '../../domain/repositories/vehicle_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/vehicle_datasource.dart';

/// Implementation of [IVehicleRepository]
class VehicleRepository implements IVehicleRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IVehicleDatasource _localDatasource;

  /// Constructor of [VehicleRepository]
  VehicleRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Vehicle>>> getVehicles({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getVehicles();
        _localDatasource.save(response);
      }

      List<Vehicle> vehicleList =
          List<Vehicle>.from(response.map((record) => record.toEntity()));
      return Right(vehicleList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Vehicle>>> getVehiclesLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Vehicle> vehicleList =
          List<Vehicle>.from(response.map((record) => record.toEntity()));
      return Right(vehicleList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Vehicle>>> getVehiclesRemote() async {
    try {
      final response = await _remoteDatasource.getVehicles();
      List<Vehicle> vehicleList =
          List<Vehicle>.from(response.map((record) => record.toEntity()));
      return Right(vehicleList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
