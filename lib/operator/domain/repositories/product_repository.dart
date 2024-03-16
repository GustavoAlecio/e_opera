import 'package:dartz/dartz.dart';
import '../../../../../../core/core.dart';
import '../entities/product.dart';

/// Interface to [IProductRepository]
abstract class IProductRepository {
  Future<Either<Failure, List<Product>>> getProducts(
      {bool forceUpdate = false});
  Future<Either<Failure, List<Product>>> getProductsLocal();
  Future<Either<Failure, List<Product>>> getProductsRemote();
}
