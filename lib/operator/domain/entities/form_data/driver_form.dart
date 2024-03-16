import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_form.freezed.dart';
part 'driver_form.g.dart';

@freezed

/// Representation of a Product
sealed class DriverForm with _$DriverForm {
  const DriverForm._();

  factory DriverForm({
    @Default('') String? driverCode,
    @Default('') String? driverName,
    @Default('') String? driverReducedName,
    @Default('') String? driverCpf,
    @Default('') String? truckPlate,
    @Default('') String? shippingCompanyCode,
    @Default('') String? shippingCompanyName,
  }) = _DriverForm;

  factory DriverForm.fromJson(Map<String, dynamic> json) =>
      _$DriverFormFromJson(json);
}
