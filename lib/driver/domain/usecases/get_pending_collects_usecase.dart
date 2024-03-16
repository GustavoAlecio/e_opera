import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../login/login.dart';
import '../../data/models/request/collect_model.dart';
import '../domain.dart';
import '../repositories/collect_repository.dart';

/// Interface to login
abstract class IGetPendingCollectsUserUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, List<CollectModel>>> call();
}

/// Implementation of [ILoginUsecase]
class GetPendingCollectsUserUsecase implements IGetPendingCollectsUserUsecase {
  final ICollectRepository _collectRepository;

  /// Constructor of [GetPendingCollectsUserUsecase]
  GetPendingCollectsUserUsecase(this._collectRepository);

  @override
  Future<Either<Failure, List<CollectModel>>> call() async {
    var getResult = await _collectRepository.getPendingCollects();

    return Either.cond(
      () => getResult.isRight(),
      () => getResult.toRight(),
      () => Failure.badRequest(),
    );
  }
}
