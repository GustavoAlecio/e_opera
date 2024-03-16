import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/driver.dart';
import '../repositories/driver_repository.dart';

/// Interface to login
abstract class IGetDriversUsecase {
  /// Method to getDrivers
  Future<Either<Failure, List<Driver>>> call();
}

/// Implementation of [ILoginUsecase]
class GetDriversUsecase implements IGetDriversUsecase {
  final IDriverRepository _repository;

  /// Constructor of [GetDriversUsecase]
  GetDriversUsecase(this._repository);
  @override
  Future<Either<Failure, List<Driver>>> call() async {
    return await _repository.getDrivers();
  }
}
