import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';

@freezed

/// Representation of Destinationa
sealed class Destination with _$Destination {
  const Destination._();

  factory Destination({
    @Default('') String destinationCode,
    @Default('') String destinationName,
  }) = _Destination;
}
