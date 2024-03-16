import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/farm.dart';

/// Interface to login
abstract class IGetFarmsUsecase {
  /// Method to get farms
  Future<Either<Failure, List<Farm>>> call();
}

/// Implementation of [ILoginUsecase]
class GetFarmsUsecase implements IGetFarmsUsecase {
  final IFarmRepository _repository;

  /// Constructor of [GetFarmsUsecase]
  GetFarmsUsecase(this._repository);
  @override
  Future<Either<Failure, List<Farm>>> call() async {
    return await _repository.getFarms();
  }
}
