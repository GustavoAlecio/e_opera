import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/field.dart';
import '../../../domain/entities/harvest.dart';
import '../../../domain/entities/localization_params.dart';

part 'home_state.freezed.dart';

@freezed

/// State ofHome
sealed class HomeState extends ViewModelState with _$HomeState {
  /// The initial [HomeState] state
  factory HomeState.initial() = InitialHome;

  /// The loading [HomeState] state
  factory HomeState.error() = ErrorHome;

  /// The loading [HomeState] state
  factory HomeState.loading() = LoadingHome;

  /// TODO: add all entities as params
  factory HomeState.loaded({
    LocationParams? locationParams,
  }) = LoadedHome;

  /// The user [HomeState] state
  factory HomeState.success() = SuccessHome;
}
