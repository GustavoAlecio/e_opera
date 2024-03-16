
import 'package:collection/collection.dart';

import '../../../core.dart';

/// Interceptor to extract http error message
class ErrorMessageInterceptor extends HttpInterceptor {
  @override
  void onError(request, exception) {
    final errorData = exception.data;
    switch (exception.status) {
      case HttpStatus.badRequest:
        throw BadRequestException(
          message: _extractMessage(exception),
          data: errorData,
        );
      case HttpStatus.unauthorized:
        throw UnauthorizedException(
          message: _extractMessage(exception),
          data: errorData,
        );
      case HttpStatus.gatewayTimeout:
      case HttpStatus.networkConnectTimeoutError:
      case HttpStatus.requestTimeout:
        throw TimeoutException(
          message: _extractMessage(exception),
        );
      case HttpStatus.unprocessableEntity:
        throw UnprocessableEntityException(
          message: _extractMessage(exception),
          data: errorData,
        );
      default:
        break;
    }
  }

  String _extractMessage(IHttpException exception) {
    if (exception.data is Map) {
      final entries = Map<String, dynamic>.from(exception.data ?? {}).entries;
      String? message = entries.firstWhereOrNull((e) {
        final key = e.key.toLowerCase();
        return key == 'mensagem' || key == 'title';
      })?.value;

      var messages = entries.firstWhereOrNull((e) {
        return e.key.toLowerCase() == 'messages';
      })?.value;

      if (messages is List) {
        message ??= messages.reduce(
          (value, element) => '$value $element',
        );
      }

      return message ??= exception.message;
    }
    if (exception.data is List) {
      final entries =
          Map<String, dynamic>.from(exception.data.first ?? {}).entries;
      String? message = entries.firstWhereOrNull((e) {
        final key = e.key.toLowerCase();
        return key == 'mensagem' || key == 'message' || key == 'title';
      })?.value;
      return message ??= exception.message;
    }
    return exception.message;
  }
}
