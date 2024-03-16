import '../../../../core/core.dart';
import '../../../login.dart';

/// Login Datasource
abstract class ILoginDatasource {
  /// Method to login
  Future<LoginModel> login(LoginParamsModel params);
}

/// Implementation of [ILoginDatasource]
class LoginDatasource implements ILoginDatasource {
  final IHttpClient _http;

  /// Constructor of [LoginDatasource]
  LoginDatasource(this._http);

  @override
  Future<LoginModel> login(LoginParamsModel params) async {
    final response = await _http.post('login', body: params.toJson());

    return LoginModel.fromJson(response.data);
  }
}
