import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Interface to login
abstract class IRetrieveLoggedInUserUsecase {
  /// Method to get login
  Future<Either<Failure, Login>> call();
}

/// Implementation of [IRetrieveLoggedInUserUsecase]
class RetrieveLoggedInUserUsecase implements IRetrieveLoggedInUserUsecase {
  final ILoginRepository _repository;

  /// Constructor of [RetrieveLoggedInUserUsecase]
  RetrieveLoggedInUserUsecase(this._repository);
  @override
  Future<Either<Failure, Login>> call() async {
    var maybeGetCredentials = await this._repository.getCredentials();

    return Future.value(Either.cond(() => maybeGetCredentials.isRight(),
        () => maybeGetCredentials.toRight(), () => Failure.badRequest()));
  }
}
