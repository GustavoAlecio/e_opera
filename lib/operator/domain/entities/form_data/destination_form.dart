import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_form.freezed.dart';
part 'destination_form.g.dart';

@freezed

/// Representation of a Product
sealed class DestinationForm with _$DestinationForm {
  const DestinationForm._();

  factory DestinationForm({
    String? entityCode,
    String? entityName,
    String? entityStore,
    String? entityStoreName,
    String? details,
  }) = _DestinationForm;

  factory DestinationForm.fromJson(Map<String, dynamic> json) =>
      _$DestinationFormFromJson(json);
}
