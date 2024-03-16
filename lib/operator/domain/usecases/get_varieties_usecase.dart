import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/variety.dart';
import '../repositories/variety_repository.dart';

/// Interface to login
abstract class IGetVarietiesUsecase {
  /// Method to getVarieties
  Future<Either<Failure, List<Variety>>> call();
}

/// Implementation of [ILoginUsecase]
class GetVarietiesUsecase implements IGetVarietiesUsecase {
  final IVarietyRepository _repository;

  /// Constructor of [GetVarietiesUsecase]
  GetVarietiesUsecase(this._repository);
  @override
  Future<Either<Failure, List<Variety>>> call() async {
    return await _repository.getVarieties();
  }
}
