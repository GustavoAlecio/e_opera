import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/field.dart';
import '../../domain/repositories/field_repository.dart';
import '../data.dart';
import '../datasource/interfaces/intro/field_datasource.dart';

/// Implementation of [IFieldRepository]
class FieldRepository implements IFieldRepository {
  final IIntroDatasource _remoteDatasource;
  final IFieldDatasource _localDatasource;

  /// Constructor of [FieldRepository]
  FieldRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Field>>> getFields({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getFields();
        _localDatasource.save(response);
      }

      List<Field> fieldList =
          List<Field>.from(response.map((record) => record.toEntity()));
      return Right(fieldList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Field>>> getFieldsLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Field> fieldList =
          List<Field>.from(response.map((record) => record.toEntity()));
      return Right(fieldList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Field>>> getFieldsRemote() async {
    try {
      final response = await _remoteDatasource.getFields();
      List<Field> fieldList =
          List<Field>.from(response.map((record) => record.toEntity()));
      return Right(fieldList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
