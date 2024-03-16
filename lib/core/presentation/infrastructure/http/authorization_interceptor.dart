import 'dart:async';

import 'package:logger/logger.dart';

import '../../../../login/login.dart';
import '../../../core.dart';

/// The authorization interceptor for [HttpAdapter]
class AuthorizationInterceptor extends HttpInterceptor {
  /// The service to get current user information
  final DependencyManager _injector;

  /// Creates a [AuthorizationInterceptor]
  AuthorizationInterceptor(this._injector);

  ILoginRepository get _loginService => _injector.get<ILoginRepository>();

  @override
  FutureOr<HttpOptions> onRequest(
    HttpOptions request,
    IHttpClient client,
  ) async {
    final Map<String, String> headers = Map.from(request.headers ?? {});
    final credentialsOrNone = await _loginService.getCredentials();

    if (credentialsOrNone.isRight() && !request.path.contains('login')) {
      credentialsOrNone.fold((l) => null, (r) {
        headers['Authorization'] = 'Bearer ${r.accessToken}';
        request = request.copyWith(headers: headers);
      });
    }

    Logger().d(
      'Request: [${request.method}] ${request.url}\nData: ${request.data}',
    );

    return super.onRequest(request, client);
  }

  @override
  void onError(HttpOptions request, IHttpException exception) async {
    // if (exception.status?.code == 401) {
    //   await _loginService.logout();
    // }
    await _loginService.logout();

    Logger().e(
      'Message: ${exception.message}\nStatus: ${exception.status}\nData: ${exception.data}',
    );

    super.onError(request, exception);
  }
}
