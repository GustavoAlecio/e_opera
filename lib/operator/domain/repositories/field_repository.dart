import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../entities/field.dart';

/// Interface to [IFieldRepository]
abstract class IFieldRepository {
  Future<Either<Failure, List<Field>>> getFields({bool forceUpdate = false});
  Future<Either<Failure, List<Field>>> getFieldsLocal();
  Future<Either<Failure, List<Field>>> getFieldsRemote();
}
