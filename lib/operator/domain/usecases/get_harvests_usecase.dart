import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../domain.dart';
import '../entities/harvest.dart';
import '../repositories/harvest_repository.dart';

/// Interface to Harvests
abstract class IGetHarvestsUsecase {
  /// Method to get harvests
  Future<Either<Failure, List<Harvest>>> call();
}

/// Implementation of [IGetHarvestsUsecase]
class GetHarvestsUsecase implements IGetHarvestsUsecase {
  final IHarvestRepository _repository;

  GetHarvestsUsecase(this._repository);

  @override
  Future<Either<Failure, List<Harvest>>> call() async {
    return await _repository.getHarvests();
  }
}
