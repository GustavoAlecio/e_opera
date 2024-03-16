import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../login/login.dart';
import '../domain.dart';

/// Interface to login
abstract class IGetLoggedInUserUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, Login>> call();
}

/// Implementation of [ILoginUsecase]
class GetLoggedInUserUsecase implements IGetLoggedInUserUsecase {
  final ILoginRepository _loginRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  GetLoggedInUserUsecase(this._loginRepository);

  @override
  Future<Either<Failure, Login>> call() async {
    var getResult = await _loginRepository.getCredentials();

    return Either.cond(
      () => getResult.isRight(),
      () => getResult.toRight(),
      () => Failure.badRequest(),
    );
  }
}
