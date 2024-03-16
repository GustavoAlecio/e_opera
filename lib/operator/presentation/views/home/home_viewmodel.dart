import '../../../../core/core.dart';
import '../../../../login/login.dart';
import '../../../domain/domain.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/field.dart';
import '../../../domain/entities/harvest.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../domain/usecases/get_loggedIn_user_usecase.dart';
import '../../../domain/usecases/update_local_database.dart';
import '../../../operator_module.dart';
import 'home_state.dart';

/// ViewModel of [LoginPage]
class HomeViewModel extends ViewModel<HomeState> {
  final IUpdateLocalDatabaseUsecase _updateLocalDatabaseUsecase;
  final IGetLoggedInUserUsecase _getLoggedInUserUsecase;
  final ILogoutUsecase _logoutUsecase;

  Login? loggedUser;

  /// Constructor of [HomeViewModel]
  HomeViewModel(
    this._updateLocalDatabaseUsecase,
    this._getLoggedInUserUsecase,
    this._logoutUsecase,
  ) : super(HomeState.initial());

  /// Method to realize login
  Future<void> getInitialData() async {
    emit(LoadingHome());

    Login loggedInUser = await _getLoggedInUser();

    loggedUser = loggedInUser;

    emit(LoadedHome(loggedInUser: loggedInUser));
    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
  }

  Future<void> updateLocalDatabase() async {
    emit(LoadingHome());
    var future = await _updateLocalDatabaseUsecase();

    emit(LoadedHome(
      loggedInUser: loggedUser,
      syncronizing: true,
      syncError: future.isLeft(),
    ));
  }

  Future<Login> _getLoggedInUser() async {
    var future = await _getLoggedInUserUsecase();
    return future.toRight();
  }

  Future<void> logout() async {
    emit(LoadingHome());
    var future = await _logoutUsecase();
  }
}
