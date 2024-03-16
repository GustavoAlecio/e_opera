import 'package:dartz/dartz.dart';
import '../../../../../../core/core.dart';
import '../entities/shipping_company.dart';

/// Interface to [IShippingCompanyRepository]
abstract class IShippingCompanyRepository {
  Future<Either<Failure, List<ShippingCompany>>> getShippingCompanies(
      {bool forceUpdate = false});
  Future<Either<Failure, List<ShippingCompany>>> getShippingCompaniesLocal();
  Future<Either<Failure, List<ShippingCompany>>> getShippingCompaniesRemote();
}
