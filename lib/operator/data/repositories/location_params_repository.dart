import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/localization_params.dart';
import '../../domain/repositories/location_params_repository.dart';
import '../data.dart';
import '../datasource/interfaces/intro/location_params_datasource.dart';
import '../models/response/location_params_model.dart';

/// Implementation of [ILocationParamsRepository]
class LocationParamsRepository implements ILocationParamsRepository {
  final ILocationParamsDatasource _localDatasource;

  /// Constructor of [LocationParamsRepository]
  LocationParamsRepository(this._localDatasource);

  @override
  Future<Either<Failure, LocationParams>> get(
      {bool forceUpdate = false}) async {
    try {
      var response = await _localDatasource.get();

      LocationParams? locationParamsList =
          response.map((record) => record.toEntity()).firstOrNull;
      if (locationParamsList == null) return Left(Failure.badRequest());
      return Right(locationParamsList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, void>> save(LocationParams locationParams) async {
    try {
      await _localDatasource
          .save([LocationParamsModel.fromEntity(locationParams)]);
      return Either.cond(
          () => true, () => {}, () => const Failure.badRequest());
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
