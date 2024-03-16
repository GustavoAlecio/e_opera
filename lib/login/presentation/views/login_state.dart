import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/core.dart';

part 'login_state.freezed.dart';

@freezed

/// State of Login
sealed class LoginState extends ViewModelState with _$LoginState {
  /// The initial [LoginState] state
  factory LoginState.initial() = InitialLogin;

  /// The loading [LoginState] state
  factory LoginState.error() = ErrorLogin;

  /// The loading [LoginState] state
  factory LoginState.loading() = LoadingLogin;

  /// The user [LoginState] state
  factory LoginState.success({int? id, String? perfil, String? nome}) =
      SuccessLogin;
}
