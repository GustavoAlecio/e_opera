import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/harvest_params.dart';

part 'summary_state.freezed.dart';

@freezed
sealed class SummaryState extends ViewModelState with _$SummaryState {
  factory SummaryState.initial() = SummaryInitial;

  factory SummaryState.error() = SummaryError;

  factory SummaryState.loading() = SummaryLoading;

  factory SummaryState.loaded({
    HarvestParams? harvestParams,
  }) = LoadedSummaryState;

  factory SummaryState.success() = SummarySuccess;
}
