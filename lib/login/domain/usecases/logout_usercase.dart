import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Interface to login
abstract class ILogoutUsecase {
  /// Method to get login
  Future<Either<Failure, void>> call();
}

/// Implementation of [ILoginUsecase]
class LogoutUsecase implements ILogoutUsecase {
  final ILoginRepository _repository;

  /// Constructor of [LoginUsecase]
  LogoutUsecase(this._repository);

  @override
  Future<Either<Failure, void>> call() async {
    await _repository.logout();
    return Right(null);
  }
}
