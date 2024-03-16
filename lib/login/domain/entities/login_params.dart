import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

@freezed

/// Params to login
sealed class LoginParams with _$LoginParams {
  const LoginParams._();

  factory LoginParams({
    @Default('') String user,
    @Default('') String password,
  }) = _LoginParams;
}
