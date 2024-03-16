import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';
import '../repositories/repositories.dart';

/// Interface to login
abstract class IUpdateLocalDatabaseUsecase {
  /// Method to geVehiclest
  Future<Either<Failure, void>> call();
}

/// Implementation of [ILoginUsecase]
class UpdateLocalDatabaseUsecase implements IUpdateLocalDatabaseUsecase {
  final IFarmRepository _farmsRepository;
  final IDriverRepository _driversRepository;
  final IFieldRepository _fieldsRepository;
  final IDestinationRepository _destinationsRepository;
  final IHarvestRepository _harvestsRepository;
  final IProductRepository _productsRepository;
  final IShippingCompanyRepository _shippingCompaniesRepository;
  final IVarietyRepository _varietiesRepository;
  final IVehicleRepository _vehiclesRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  UpdateLocalDatabaseUsecase(
      this._farmsRepository,
      this._driversRepository,
      this._fieldsRepository,
      this._destinationsRepository,
      this._harvestsRepository,
      this._productsRepository,
      this._shippingCompaniesRepository,
      this._varietiesRepository,
      this._vehiclesRepository);
  @override
  Future<Either<Failure, void>> call() async {
    var futures = await Future.wait([
      this._farmsRepository.getFarms(forceUpdate: true),
      this._driversRepository.getDrivers(forceUpdate: true),
      this._fieldsRepository.getFields(forceUpdate: true),
      this._destinationsRepository.getDestinations(forceUpdate: true),
      this._harvestsRepository.getHarvests(forceUpdate: true),
      this._productsRepository.getProducts(forceUpdate: true),
      this._shippingCompaniesRepository.getShippingCompanies(forceUpdate: true),
      this._varietiesRepository.getVarieties(forceUpdate: true),
      this._vehiclesRepository.getVehicles(forceUpdate: true)
    ]);

    return Either.cond(
      () => futures.any((element) => element.isRight()),
      () => {},
      () => const Failure.badRequest(),
    );
  }
}
