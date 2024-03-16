import 'package:freezed_annotation/freezed_annotation.dart';

part 'variety.freezed.dart';

@freezed

/// Representation of aVariety
sealed class Variety with _$Variety {
  const Variety._();

  factory Variety({
    @Default('') String varietyCode,
    @Default('') String varietyDescription,
    @Default('') String productCode,
    @Default('') String productDescription,
  }) = _Variety;
}
