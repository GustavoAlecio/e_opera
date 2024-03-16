import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/product_datasource.dart';

/// Implementation of [IProductRepository]
class ProductRepository implements IProductRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IProductDatasource _localDatasource;

  /// Constructor of [ProductRepository]
  ProductRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<Product>>> getProducts({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getProducts();
        _localDatasource.save(response);
      }

      List<Product> harvesProducttList =
          List<Product>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsLocal() async {
    try {
      final response = await _localDatasource.get();
      List<Product> harvesProducttList =
          List<Product>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsRemote() async {
    try {
      final response = await _remoteDatasource.getProducts();
      List<Product> harvesProducttList =
          List<Product>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
