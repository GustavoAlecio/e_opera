import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';

@freezed

/// Representation of aDriver
sealed class Driver with _$Driver {
  const Driver._();

  factory Driver({
    @Default('') String driverCode,
    @Default('') String driverName,
    @Default('') String driverReducedName,
    @Default('') String driverCpf,
  }) = _Driver;
}
