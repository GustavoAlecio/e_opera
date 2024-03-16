import '../../../../../../../core/core.dart';
import '../../../domain/usecases/get_destinations_usecase.dart';
import 'destination_data_state.dart';

/// ViewModel of [LoginPage]
class DestinationDataViewModel extends ViewModel<DestinationDataState> {
  final IGetDestinationsUsecase _getDestinationUsecase;

  /// Constructor of [IntroViewModel]
  DestinationDataViewModel(this._getDestinationUsecase)
      : super(DestinationDataState.initial());

  void navigateToHomePage() {}

  /// Method to realize login
  Future<void> getDataOptions() async {
    emit(LoadingDestinationData());

    var destinationsResponse = await this._getDestinationUsecase.call();
    final newState = destinationsResponse.fold((l) => ErrorDestinationData(),
        (r) => LoadedDestinationDataState(destinations: r));

    emit(newState);
  }

  void onSelectDestination(String selectedDestination) {
    switch (state) {
      case LoadedDestinationDataState(:final copyWith, :final destinations):
        {
          final destination = destinations.firstWhere(
              (element) => element.destinationName == selectedDestination);

          // similar ao {..., selectedFarm: farm} do JavaScript
          emit(copyWith(selectedDestination: destination));
        }
      default:
        return;
    }
  }
}
