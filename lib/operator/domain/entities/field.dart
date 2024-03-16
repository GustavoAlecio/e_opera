import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';
part 'field.g.dart';

@freezed

/// Representation of a Field
sealed class Field with _$Field {
  const Field._();

  factory Field({
    @Default('') String fieldDescription,
    @Default('') String fieldCode,
    @Default('') String harvestField,
    @Default('') String farmField,
    @Default('') String productField,
    @Default('') String productDescription,
    @Default('') String varietyCode,
    @Default('') String varietyDescription,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}
