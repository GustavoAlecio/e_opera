import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed

/// login entity
sealed class Login with _$Login {
  const Login._();

  factory Login({
    @Default(0) int id,
    @Default('') String? nome,
    @Default('') String? perfil,
    @Default('') String accessToken,
    @Default('') String refreshToken,
  }) = _Login;
}
