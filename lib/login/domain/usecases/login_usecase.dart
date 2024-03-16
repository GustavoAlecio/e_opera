import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Interface to login
abstract class ILoginUsecase {
  /// Method to get login
  Future<Either<Failure, Login>> call(LoginParams params);
}

/// Implementation of [ILoginUsecase]
class LoginUsecase implements ILoginUsecase {
  final ILoginRepository _repository;

  /// Constructor of [LoginUsecase]
  LoginUsecase(this._repository);
  @override
  Future<Either<Failure, Login>> call(LoginParams params) async {
    return await _repository.login(params);
  }
}
