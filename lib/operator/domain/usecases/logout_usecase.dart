import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../login/login.dart';
import '../domain.dart';

/// Interface to login
abstract class ILogoutUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, void>> call();
}

/// Implementation of [ILoginUsecase]
class LogoutUsecase implements ILogoutUsecase {
  final ILoginRepository _loginRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  LogoutUsecase(this._loginRepository);

  @override
  Future<Either<Failure, void>> call() async {
    var getResult = await _loginRepository.logout();

    return Either.cond(
      () => getResult.isRight(),
      () => unit,
      () => Failure.badRequest(),
    );
  }
}
