import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../localization_params.dart';
import 'destination_form.dart';
import 'driver_form.dart';
import 'product_form.dart';

part 'harvest_form.freezed.dart';
part 'harvest_form.g.dart';

@freezed

/// Representation of aDriver
sealed class HarvestForm with _$HarvestForm {
  const HarvestForm._();

  factory HarvestForm({
    String? id,
    String? date,
    LocationParams? location,
    ProductForm? product,
    DriverForm? driver,
    DestinationForm? destination,
  }) = _HarvestForm;

  factory HarvestForm.fromJson(Map<String, dynamic> json) =>
      _$HarvestFormFromJson(json);
}
