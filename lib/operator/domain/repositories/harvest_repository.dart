import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../entities/harvest.dart';

/// Interface to [IHarvestRepository]
abstract class IHarvestRepository {
  Future<Either<Failure, List<Harvest>>> getHarvests(
      {bool forceUpdate = false});
  Future<Either<Failure, List<Harvest>>> getHarvestsLocal();
  Future<Either<Failure, List<Harvest>>> getHarvestsRemote();
}
