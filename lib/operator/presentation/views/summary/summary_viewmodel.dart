import '../../../../core/core.dart';
import 'summary_state.dart';

class SummaryViewModel extends ViewModel<SummaryState> {
  SummaryViewModel() : super(SummaryState.initial());

  Future<void> fetchData() async {
    emit(SummaryLoading());

    emit(LoadedSummaryState());
  }
}
