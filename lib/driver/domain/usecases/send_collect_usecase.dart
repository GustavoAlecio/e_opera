import 'package:dartz/dartz.dart';
import 'package:eopera/core/domain/validations/failure.dart';
import 'package:eopera/driver/domain/repositories/collect_repository.dart';

import '../../data/models/request/collect_model.dart';
import '../entities/form_data/harvest_form.dart';

abstract class ISendCollectUsecase {
  /// Method to getDestinations
  Future<Either<Failure, void>> call(HarvestForm harvestForm);
}

class SendCollectUsecase implements ISendCollectUsecase {
  final ICollectRepository _collectRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  SendCollectUsecase(
    this._collectRepository,
  );

  @override
  Future<Either<Failure, void>> call(HarvestForm harvestForm) async {
    return this
        ._collectRepository
        .collect(CollectModel.fromEntity(harvestForm));
  }
}
