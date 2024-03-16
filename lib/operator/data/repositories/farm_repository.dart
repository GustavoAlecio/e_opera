import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/farm.dart';
import '../data.dart';
import '../datasource/interfaces/intro/farm_datasource.dart';

/// Implementation of [IFarmRepository]
class FarmRepository implements IFarmRepository {
  final IIntroDatasource _remoteDatasource;
  final IFarmDatasource _localDatasource;

  /// Constructor of [FarmRepository]
  FarmRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Farm>>> getFarms({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();
      if (response.isEmpty) {
        response = await _remoteDatasource.getFarms();
        _localDatasource.save(response);
      }

      List<Farm> farmList =
          List<Farm>.from(response.map((record) => record.toEntity()));
      return Right(farmList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Farm>>> getFarmsLocal() async {
    try {
      var response = await _localDatasource.get();
      List<Farm> farmList =
          List<Farm>.from(response.map((record) => record.toEntity()));
      return Right(farmList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Farm>>> getFarmsRemote() async {
    try {
      var response = await _remoteDatasource.getFarms();
      List<Farm> farmList =
          List<Farm>.from(response.map((record) => record.toEntity()));
      return Right(farmList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
