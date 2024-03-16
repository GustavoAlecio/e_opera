import 'package:freezed_annotation/freezed_annotation.dart';

import '../farm.dart';
import '../field.dart';
import '../harvest.dart';

part 'localization_params.freezed.dart';
part 'localization_params.g.dart';

@freezed

/// Localization of the operator
sealed class LocationParams with _$LocationParams {
  const LocationParams._();

  factory LocationParams({
    required Farm farm,
    required Harvest harvest,
    required Field field,
  }) = _LocationParams;

  factory LocationParams.fromJson(Map<String, dynamic> json) =>
      _$LocationParamsFromJson(json);
}
