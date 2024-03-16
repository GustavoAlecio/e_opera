import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/shipping_company.dart';
import '../../domain/repositories/shipping_company_repository.dart';
import '../data.dart';
import '../datasource/interfaces/harvest/shipping_company_datasource.dart';

/// Implementation of [IShippingCompanyRepository]
class ShippingCompanyRepository implements IShippingCompanyRepository {
  final IHarvestFormDatasource _remoteDatasource;
  final IShippingCompanyDatasource _localDatasource;

  /// Constructor of [ShippingCompanyRepository]
  ShippingCompanyRepository(this._remoteDatasource, this._localDatasource);

  @override
  Future<Either<Failure, List<ShippingCompany>>> getShippingCompanies({
    bool forceUpdate = false,
  }) async {
    try {
      var response = await _localDatasource.get();

      if (response.isEmpty || forceUpdate) {
        response = await _remoteDatasource.getShippingCompanies();
        _localDatasource.save(response);
      }

      List<ShippingCompany> shippingCompanyList = List<ShippingCompany>.from(
          response.map((record) => record.toEntity()));
      return Right(shippingCompanyList);
    } catch (error) {
      Log.e(error);
      _localDatasource.clear();
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<ShippingCompany>>>
      getShippingCompaniesLocal() async {
    try {
      final response = await _localDatasource.get();
      List<ShippingCompany> shippingCompanyList = List<ShippingCompany>.from(
          response.map((record) => record.toEntity()));
      return Right(shippingCompanyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Failure, List<ShippingCompany>>>
      getShippingCompaniesRemote() async {
    try {
      final response = await _remoteDatasource.getShippingCompanies();
      List<ShippingCompany> shippingCompanyList = List<ShippingCompany>.from(
          response.map((record) => record.toEntity()));
      return Right(shippingCompanyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
