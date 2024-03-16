import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../data/models/request/collect_model.dart';

/// Interface to [IDestinationRepository]
abstract class ICollectRepository {
  /// Method to get login
  Future<Either<Failure, CollectModel>> collect(CollectModel model);
  Future<Either<Failure, void>> collectLocal();
  Future<Either<Failure, CollectModel>> saveToLocalStorage(CollectModel model);
  Future<Either<Failure, List<CollectModel>>> getPendingCollects();
  Future<Either<Failure, List<CollectModel>>> getAllCollects();
}
