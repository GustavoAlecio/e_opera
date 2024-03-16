import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../core/core.dart';
import '../../../domain/entities/shipping_company.dart';
import '../../../domain/entities/vehicle.dart';

part 'driver_data_state.freezed.dart';

@freezed

/// State ofDriverData
sealed class DriverDataState extends ViewModelState with _$DriverDataState {
  /// The initial [DriverDataState] state
  factory DriverDataState.initial() = InitialDriverData;

  /// The loading [DriverDataState] state
  factory DriverDataState.error() = ErrorDriverData;

  /// The loading [DriverDataState] state
  factory DriverDataState.loading() = LoadingDriverData;

  /// TODO: add all entities as params
  factory DriverDataState.loaded({
    @Default([]) List<ShippingCompany> shippingCompanies,
    ShippingCompany? selectedShippingCompany,
    @Default([]) List<Vehicle> vehicles,
    Vehicle? selectedVehicle,
  }) = LoadedDriverDataState;

  /// The user [DriverDataState] state
  factory DriverDataState.success() = SuccessDriverData;
}
