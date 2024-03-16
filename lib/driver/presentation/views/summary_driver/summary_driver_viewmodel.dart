import '../../../../core/core.dart';
import '../../../domain/entities/collect.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../domain/usecases/save_collect_to_localstorage.dart';
import '../../../domain/usecases/send_collect_usecase.dart';
import 'summary_driver_state.dart';

class SummaryDriverViewModel extends ViewModel<SummaryDriverState> {
  final ISendCollectUsecase _sendCollectUsecase;
  final ISaveCollectToLocalStorageUsecase _saveCollectToLocalStorageUsecase;

  SummaryDriverViewModel(
    this._sendCollectUsecase,
    this._saveCollectToLocalStorageUsecase,
  ) : super(
          SummaryDriverState.initial(),
        );

  Future<void> fetchData() async {
    emit(SummaryDriverLoading());

    emit(LoadedSummaryDriverState());
  }

  void onInitData(HarvestForm collect) {
    emit(SummaryDriverLoading());

    emit(LoadedSummaryDriverState(collectedData: collect));
  }

  void sendData(HarvestForm collect) async {
    emit(SummaryDriverLoading());
    var usecase = await _sendCollectUsecase(collect);
    final newState = usecase.fold(
        (l) => SummaryDriverError(), (r) => SummaryDriverSuccess());
    emit(newState);
  }

  Future<void> saveToLocalStorage(HarvestForm collect) async {
    emit(SummaryDriverLoading());
    var usecase = await _saveCollectToLocalStorageUsecase(collect);
    final newState = usecase.fold(
      (l) => SummaryDriverError(),
      (r) => SummaryDriverSuccess(),
    );

    emit(newState);
  }
}
