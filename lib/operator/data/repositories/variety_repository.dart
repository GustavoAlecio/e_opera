import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/variety.dart';
import '../../domain/repositories/variety_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/variety_datasource.dart';

/// Implementation of [IVarietyRepository]
class VarietyRepository implements IVarietyRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IVarietyDatasource _localDatasource;

  /// Constructor of [VarietyRepository]
  VarietyRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Variety>>> getVarieties({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getVarieties();
        _localDatasource.save(response);
      }

      List<Variety> VarietyList =
          List<Variety>.from(response.map((record) => record.toEntity()));
      return Right(VarietyList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Variety>>> getVarietiesLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Variety> VarietyList =
          List<Variety>.from(response.map((record) => record.toEntity()));
      return Right(VarietyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Variety>>> getVarietiesRemote() async {
    try {
      final response = await _remoteDatasource.getVarieties();
      List<Variety> VarietyList =
          List<Variety>.from(response.map((record) => record.toEntity()));
      return Right(VarietyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
