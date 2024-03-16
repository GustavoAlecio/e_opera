import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/destination.dart';
import '../../domain/repositories/destination_repository.dart';
import '../../domain/repositories/product_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/entity_datasource.dart';

/// Implementation of [IProductRepository]
class DestinationRepository implements IDestinationRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IEntityDatasource _localDatasource;

  /// Constructor of [ProductRepository]
  DestinationRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Destination>>> getDestinations({
    bool forceUpdate = false,
  }) async {
    try {
      var destinations = await getDestinationsLocal();
      if (destinations.toRight().isEmpty || forceUpdate) {
        destinations = await getDestinationsRemote();
        _localDatasource.save(
          destinations
              .toRight()
              .map((e) => EntityModel(
                  entityCode: e.destinationCode, entityName: e.destinationName))
              .toList(),
        );
        // _localDatasource.save(destinations.toRight() as List<EntityModel>);
      }

      return Right(destinations.toRight());
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Destination>>> getDestinationsRemote() async {
    try {
      final response = await _remoteDatasource.getEntities();
      List<Destination> harvesProducttList =
          List<Destination>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Destination>>> getDestinationsLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Destination> harvesProducttList =
          List<Destination>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
