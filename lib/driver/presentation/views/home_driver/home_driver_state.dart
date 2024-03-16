import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';
import '../../../../login/login.dart';

part 'home_driver_state.freezed.dart';

@freezed

/// State ofHome
sealed class DriverHomeState extends ViewModelState with _$DriverHomeState {
  /// The initial [DriverHomeState] state
  factory DriverHomeState.initial() = DriverInitialHome;

  /// The loading [DriverHomeState] state
  factory DriverHomeState.error() = DriverErrorHome;

  factory DriverHomeState.loaded({
    Login? loggedInUser,
    @Default(false) bool syncronizing,
    @Default(false) bool syncError,
    @Default(0) int numberOfPendingCollects,
  }) = DriverLoadedHome;

  /// The loading [DriverHomeState] state
  factory DriverHomeState.loading() = DriverLoadingHome;

  /// The user [DriverHomeState] state
  factory DriverHomeState.success() = DriverSuccessHome;
}
