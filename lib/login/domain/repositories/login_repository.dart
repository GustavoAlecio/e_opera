import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Interface to [ILoginRepository]
abstract class ILoginRepository{
  /// Method to get login
  Future<Either<Failure, Unit>> login(LoginParams params);
}