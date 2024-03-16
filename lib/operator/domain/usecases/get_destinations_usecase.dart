import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/destination.dart';
import '../repositories/destination_repository.dart';

/// Interface to login
abstract class IGetDestinationsUsecase {
  /// Method to getDestinations
  Future<Either<Failure, List<Destination>>> call();
}

/// Implementation of [ILoginUsecase]
class GetDestinationsUsecase implements IGetDestinationsUsecase {
  final IDestinationRepository _repository;

  /// Constructor of [GetDestinationsUsecase]
  GetDestinationsUsecase(this._repository);
  @override
  Future<Either<Failure, List<Destination>>> call() async {
    return await _repository.getDestinations();
  }
}
