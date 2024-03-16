import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Interface to [ILoginRepository]
abstract class ILoginRepository {
  /// Method to get login
  Future<Either<Failure, Login>> login(LoginParams params);

  /// Retrieve last loggedIn user data
  Future<Either<Unit, Login>> getCredentials();

  Future<Either<Unit, void>> logout();
}
