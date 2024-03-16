import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

/// Interface to login
abstract class IGetProductsUsecase {
  /// Method to getProducts
  Future<Either<Failure, List<Product>>> call();
}

/// Implementation of [ILoginUsecase]
class GetProductsUsecase implements IGetProductsUsecase {
  final IProductRepository _repository;

  /// Constructor of [GetProductsUsecase]
  GetProductsUsecase(this._repository);
  @override
  Future<Either<Failure, List<Product>>> call() async {
    return await _repository.getProducts();
  }
}
