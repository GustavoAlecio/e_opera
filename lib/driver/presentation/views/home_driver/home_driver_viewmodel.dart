import 'package:eopera/driver/domain/usecases/logout_usecase.dart';

import '../../../../core/core.dart';
import '../../../../login/domain/domain.dart';
import '../../../../login/presentation/views/login_state.dart';
import '../../../../operator/presentation/views/home/home_state.dart';
import '../../../domain/domain.dart';
import '../../../domain/usecases/get_loggedIn_user_usecase.dart';
import '../../../domain/usecases/get_pending_collects_usecase.dart';
import '../../../domain/usecases/synchronize_local_database_usecase.dart';
import '../../../driver_module.dart';
import 'home_driver_state.dart';

/// ViewModel of [LoginPage]
class DriverHomeViewModel extends ViewModel<DriverHomeState> {
  final IGetLoggedInUserUsecase _getLoggedInUserUsecase;
  final IGetPendingCollectsUserUsecase _getPendingCollectsUserUsecase;
  final ISynchronizeLocalDatabaseUsecase _synchronizeLocalDatabaseUsecase;
  final ILogoutUsecase _logoutUsecase;

  /// Constructor of [DriverHomeViewModel]
  DriverHomeViewModel(
    this._getLoggedInUserUsecase,
    this._getPendingCollectsUserUsecase,
    this._synchronizeLocalDatabaseUsecase,
    this._logoutUsecase,
  ) : super(DriverHomeState.initial());

  /// Method to realize login
  Future<void> synchronizeLocalDatabaseUsecase(Login loggedInUser) async {
    emit(DriverLoadingHome());

    var usecase = await _synchronizeLocalDatabaseUsecase();
    emit(
      DriverLoadedHome(
        loggedInUser: loggedInUser,
        syncronizing: true,
        syncError: usecase.isLeft(),
        numberOfPendingCollects: 0,
      ),
    );
  }

  Future<int> getPendingCollects() async {
    emit(DriverLoadingHome());
    var eitherPendingCollects = await _getPendingCollectsUserUsecase.call();
    emit(DriverLoadedHome());
    return eitherPendingCollects.toRight().length;
  }

  Future<void> getCredentials() async {
    emit(DriverLoadingHome());

    var eitherLoggedInUser = await _getLoggedInUserUsecase();
    var eitherPendingCollects = await _getPendingCollectsUserUsecase();

    if (eitherPendingCollects.isLeft()) {
      emit(DriverErrorHome());
      return;
    }

    emit(DriverLoadedHome(
      loggedInUser: eitherLoggedInUser.toRight(),
      numberOfPendingCollects: eitherPendingCollects.toRight().length,
    ));
  }

  Future<void> logout() async {
    emit(DriverLoadingHome());
    var future = await _logoutUsecase();
  }
}
