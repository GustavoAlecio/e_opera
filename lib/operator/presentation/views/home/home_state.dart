import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';
import '../../../../login/login.dart';
import '../../../domain/entities/localization_params.dart';

part 'home_state.freezed.dart';

@freezed

/// State ofHome
sealed class HomeState extends ViewModelState with _$HomeState {
  /// The initial [HomeState] state
  factory HomeState.initial() = InitialHome;

  /// The loading [HomeState] state
  factory HomeState.error({@Default('') String message}) = ErrorHome;

  /// The loading [HomeState] state
  factory HomeState.loading() = LoadingHome;

  /// TODO: add all entities as params
  factory HomeState.loaded({
    LocationParams? locationParams,
    Login? loggedInUser,
    @Default(false) bool syncronizing,
    @Default(false) bool syncError,
  }) = LoadedHome;

  /// The user [HomeState] state
  factory HomeState.success() = SuccessHome;
}
