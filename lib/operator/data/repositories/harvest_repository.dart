import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/harvest.dart';
import '../../domain/repositories/harvest_repository.dart';
import '../data.dart';
import '../datasource/interfaces/intro/harvest_datasource.dart';

/// Implementation of [IHarvestRepository]
class HarvestRepository implements IHarvestRepository {
  final IIntroDatasource _remoteDatasource;
  final IHarvestDatasource _localDatasource;

  /// Constructor of [HarvestRepository]
  HarvestRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Harvest>>> getHarvests({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getHarvests();
        _localDatasource.save(response);
      }

      List<Harvest> harvestList =
          List<Harvest>.from(response.map((record) => record.toEntity()));
      return Right(harvestList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Harvest>>> getHarvestsLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Harvest> harvestList =
          List<Harvest>.from(response.map((record) => record.toEntity()));
      return Right(harvestList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Harvest>>> getHarvestsRemote() async {
    try {
      final response = await _remoteDatasource.getHarvests();
      List<Harvest> harvestList =
          List<Harvest>.from(response.map((record) => record.toEntity()));
      return Right(harvestList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
