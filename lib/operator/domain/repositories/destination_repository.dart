import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../entities/destination.dart';

/// Interface to [IDestinationRepository]
abstract class IDestinationRepository {
  /// Method to get login
  Future<Either<Failure, List<Destination>>> getDestinations(
      {bool forceUpdate = false});
  Future<Either<Failure, List<Destination>>> getDestinationsLocal();
  Future<Either<Failure, List<Destination>>> getDestinationsRemote();
}
