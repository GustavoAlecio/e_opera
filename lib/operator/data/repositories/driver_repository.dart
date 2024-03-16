import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/driver.dart';
import '../../domain/repositories/driver_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/driver_datasource.dart';

/// Implementation of [IDriverRepository]
class DriverRepository implements IDriverRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IDriverDatasource _localDatasource;

  /// Constructor of [DriverRepository]
  DriverRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Driver>>> getDrivers({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getDrivers();
        _localDatasource.save(response);
      }

      List<Driver> DriverList =
          List<Driver>.from(response.map((record) => record.toEntity()));
      return Right(DriverList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Driver>>> getDestinationsLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Driver> driverList =
          List<Driver>.from(response.map((record) => record.toEntity()));
      return Right(driverList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Driver>>> getDestinationsRemote() async {
    try {
      final response = await _remoteDatasource.getDrivers();
      List<Driver> DriverList =
          List<Driver>.from(response.map((record) => record.toEntity()));
      return Right(DriverList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
