import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../domain.dart';
import '../entities/field.dart';
import '../repositories/field_repository.dart';

/// Interface to Fields
abstract class IGetFieldsUsecase {
  /// Method to get fields
  Future<Either<Failure, List<Field>>> call();
}

/// Implementation of [IGetFieldsUsecase]
class GetFieldsUsecase implements IGetFieldsUsecase {
  final IFieldRepository _repository;

  GetFieldsUsecase(this._repository);

  @override
  Future<Either<Failure, List<Field>>> call() async {
    return await _repository.getFields();
  }
}
