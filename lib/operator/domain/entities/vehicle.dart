import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';

@freezed

/// Representation of aDriver
sealed class Vehicle with _$Vehicle {
  const Vehicle._();

  factory Vehicle({
    @Default('') String vehicleCode,
    @Default('') String vehicleName,
    @Default('') String vehiclePlate,
    @Default('') String driverVehicle,
  }) = _Vehicle;
}
