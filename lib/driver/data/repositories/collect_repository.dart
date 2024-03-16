import 'package:dartz/dartz.dart';
import 'package:eopera/driver/domain/repositories/collect_repository.dart';
import 'package:mz_rsa_plugin/mz_rsa_plugin.dart';

import '../../../core/core.dart';
import '../../domain/entities/collect.dart';
import '../../domain/entities/form_data/harvest_form.dart';
import '../../driver.dart';
import '../datasource/interfaces/collect_datasource.dart';
import '../datasource/remote/collect_datasource.dart';
import '../models/request/collect_model.dart';

class CollectRepository implements ICollectRepository {
  final ICollectDatasource _datasource;
  final ICollectLocalDatasource _localDatasource;

  /// Constructor of [CollectRepository]
  CollectRepository(
    this._datasource,
    this._localDatasource,
  );

  @override
  Future<Either<Failure, CollectModel>> collect(CollectModel model) async {
    var collect = await _datasource.collect(model);
    if (collect.isLeft()) {
      await _localDatasource.clear();
    }
    return collect;
  }

  Future<Either<Failure, CollectModel>> saveToLocalStorage(
    CollectModel model,
  ) async {
    try {
      await _localDatasource.save([model]);
      return Right(model);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, void>> collectLocal() async {
    var list = await _localDatasource.get();
    List<Either<Failure, CollectModel>> listOfFuture = await Future.wait(
      list.map(
        (element) async {
          if (!element.alreadySent) {
            Either<Failure, CollectModel> eitherCollectData =
                await _datasource.collect(element);

            if (eitherCollectData.isLeft()) {
              return Left(Failure.badRequest());
            }

            CollectModel collectModel =
                eitherCollectData.toRight().copyWith(alreadySent: true);

            await _localDatasource.save([collectModel]);

            return Right(collectModel);
          }
          return Right(element);
        },
      ),
    );

    return Either.cond(
      () => !listOfFuture.any((element) => element.isLeft()),
      () => null,
      () => Failure.badRequest(),
    );
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getDestinationsRemote() {
    // TODO: implement getDestinationsRemote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getDestinationsLocal() {
    // TODO: implement getDestinationsLocal
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getPendingCollects() async {
    try {
      var list = await _localDatasource.get();
      return Right(
          list.where((element) => element.alreadySent == false).toList());
    } catch (error) {
      return Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getAllCollects() async {
    try {
      var list = await _localDatasource.get();
      return Right(list);
    } catch (error) {
      return Left(Failure.badRequest());
    }
  }
}
