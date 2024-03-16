import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../data/repositories/location_params_repository.dart';
import '../domain.dart';
import '../entities/farm.dart';
import '../entities/field.dart';
import '../entities/harvest.dart';
import '../entities/localization_params.dart';
import '../repositories/location_params_repository.dart';

/// Interface to login
abstract class IGetLocationParamsLocallyUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, LocationParams>> call();
}

/// Implementation of [ILoginUsecase]
class GetLocationParamsLocallyUsecase
    implements IGetLocationParamsLocallyUsecase {
  final ILocationParamsRepository _locationParamsRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  GetLocationParamsLocallyUsecase(this._locationParamsRepository);

  @override
  Future<Either<Failure, LocationParams>> call() async {
    var getResult = _locationParamsRepository.get();
    return getResult;
  }
}
