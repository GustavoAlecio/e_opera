import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
/// Failure for app
sealed class Failure with _$Failure {
  const factory Failure.server() = _ServerFailure;
  const factory Failure.badRequest() = _BadRequestFailure;
}
