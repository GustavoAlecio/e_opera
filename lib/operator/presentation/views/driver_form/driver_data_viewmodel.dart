import '../../../../../../../core/core.dart';
import '../../../domain/entities/shipping_company.dart';
import '../../../domain/entities/vehicle.dart';
import '../../../domain/usecases/get_shipping_companies_usecase.dart';
import '../../../domain/usecases/get_vehicles_usecase.dart';
import 'driver_data_state.dart';

/// ViewModel of [LoginPage]
class DriverDataViewModel extends ViewModel<DriverDataState> {
  final IGetShippingCompaniesUsecase _getShippingCompaniesUsecase;
  final IGetVehiclesUsecase _getVehiclesUsecase;

  /// Constructor of [IntroViewModel]
  DriverDataViewModel(
    this._getShippingCompaniesUsecase,
    this._getVehiclesUsecase,
  ) : super(DriverDataState.initial());

  void navigateToHomePage() {}

  /// Method to realize login
  Future<void> getDataOptions() async {
    emit(LoadingDriverData());

    final usecases = await Future.wait(
        [_getShippingCompaniesUsecase(), _getVehiclesUsecase()]);

    if (usecases.any((element) => element.isLeft())) {
      emit(ErrorDriverData());
      return;
    }

    var shippingCompanies = usecases.first.toRight() as List<ShippingCompany>;
    var vehicles = usecases.last.toRight() as List<Vehicle>;

    emit(
      LoadedDriverDataState(
        vehicles: vehicles,
        shippingCompanies: shippingCompanies,
      ),
    );
  }

  void onSelectVehicle(String selectedVehicle) {
    switch (state) {
      case LoadedDriverDataState(:final copyWith, :final vehicles):
        {
          final vehicle = vehicles
              .firstWhere((element) => element.vehiclePlate == selectedVehicle);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedVehicle: vehicle));
        }
      default:
        return;
    }
  }

  void onSelectShippingCompany(String selectedShippingCompany) {
    switch (state) {
      case LoadedDriverDataState(:final copyWith, :final shippingCompanies):
        {
          final shippingCompany = shippingCompanies.firstWhere((element) =>
              element.shippingCompanyName == selectedShippingCompany);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedShippingCompany: shippingCompany));
        }
      default:
        return;
    }
  }
}
