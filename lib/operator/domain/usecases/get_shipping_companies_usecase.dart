import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../entities/shipping_company.dart';
import '../repositories/shipping_company_repository.dart';

/// Interface to login
abstract class IGetShippingCompaniesUsecase {
  /// Method to geShippingCompaniest
  Future<Either<Failure, List<ShippingCompany>>> call();
}

/// Implementation of [ILoginUsecase]
class GetShippingCompaniesUsecase implements IGetShippingCompaniesUsecase {
  final IShippingCompanyRepository _repository;

  /// Constructor of [GetShippingCompaniesUsecase]
  GetShippingCompaniesUsecase(this._repository);
  @override
  Future<Either<Failure, List<ShippingCompany>>> call() async {
    return await _repository.getShippingCompanies();
  }
}
