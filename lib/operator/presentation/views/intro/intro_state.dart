import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/field.dart';
import '../../../domain/entities/harvest.dart';

part 'intro_state.freezed.dart';

@freezed

/// State of Intro
sealed class IntroState extends ViewModelState with _$IntroState {
  /// The initial [IntroState] state
  factory IntroState.initial() = InitialIntro;

  /// The loading [IntroState] state
  factory IntroState.error() = ErrorIntro;

  /// The loading [IntroState] state
  factory IntroState.loading() = LoadingIntro;

  /// TODO: add all entities as params
  factory IntroState.loaded({
    @Default([]) List<Farm> farms,
    Farm? selectedFarm,
    @Default([]) List<Harvest> harvests,
    Harvest? selectedHarvest,
    @Default([]) List<Field> fields,
    Field? selectedField,
  }) = LoadedIntro;

  /// The user [IntroState] state
  factory IntroState.success() = SuccessIntro;
}
