import 'package:dartz/dartz.dart';
import '../../../../../../core/core.dart';
import '../entities/variety.dart';

/// Interface to [IVarietyRepository]
abstract class IVarietyRepository {
  Future<Either<Failure, List<Variety>>> getVarieties(
      {bool forceUpdate = false});
  Future<Either<Failure, List<Variety>>> getVarietiesLocal();
  Future<Either<Failure, List<Variety>>> getVarietiesRemote();
}
