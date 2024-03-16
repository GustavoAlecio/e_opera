import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../data/repositories/location_params_repository.dart';
import '../domain.dart';
import '../entities/farm.dart';
import '../entities/field.dart';
import '../entities/harvest.dart';
import '../entities/localization_params.dart';
import '../repositories/location_params_repository.dart';
import '../repositories/repositories.dart';

/// Interface to login
abstract class ISaveLocationParamsLocallyUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, void>> call(
      Farm selectedFarm, Harvest selectedHarvest, Field selectedField);
}

/// Implementation of [ILoginUsecase]
class SaveLocationParamsLocallyUsecase
    implements ISaveLocationParamsLocallyUsecase {
  final ILocationParamsRepository _locationParamsRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  SaveLocationParamsLocallyUsecase(this._locationParamsRepository);

  @override
  Future<Either<Failure, void>> call(
      Farm selectedFarm, Harvest selectedHarvest, Field selectedField) async {
    var saveResult = _locationParamsRepository.save(
      new LocationParams(
          farm: selectedFarm, harvest: selectedHarvest, field: selectedField),
    );
    return saveResult;
  }
}
