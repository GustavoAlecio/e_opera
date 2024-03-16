import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../entities/localization_params.dart';

/// Interface to [ILocationParamsRepository]
abstract class ILocationParamsRepository {
  /// Method to get login
  Future<Either<Failure, LocationParams>> get({
    bool forceUpdate = false,
  });
  Future<Either<Failure, void>> save(LocationParams locationParams);
}
