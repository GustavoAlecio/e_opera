import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../entities/driver.dart';
import '../entities/product.dart';

/// Interface to [IDriverRepository]
abstract class IDriverRepository {
  /// Method to get login
  Future<Either<Failure, List<Driver>>> getDrivers({bool forceUpdate = false});
  Future<Either<Failure, List<Driver>>> getDestinationsLocal();
  Future<Either<Failure, List<Driver>>> getDestinationsRemote();
}
