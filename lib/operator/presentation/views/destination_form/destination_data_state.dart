import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/core.dart';
import '../../../domain/entities/destination.dart';

part 'destination_data_state.freezed.dart';

@freezed

/// State ofDestinationData
sealed class DestinationDataState extends ViewModelState
    with _$DestinationDataState {
  /// The initial [DestinationDataState] state
  factory DestinationDataState.initial() = InitialDestinationData;

  /// The loading [DestinationDataState] state
  factory DestinationDataState.error() = ErrorDestinationData;

  /// The loading [DestinationDataState] state
  factory DestinationDataState.loading() = LoadingDestinationData;

  /// TODO: add all entities as params
  factory DestinationDataState.loaded({
    @Default([]) List<Destination> destinations,
    Destination? selectedDestination,
  }) = LoadedDestinationDataState;

  /// The user [DestinationDataState] state
  factory DestinationDataState.success() = SuccessDestinationData;
}
