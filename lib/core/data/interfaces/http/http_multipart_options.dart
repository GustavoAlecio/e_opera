
import 'package:freezed_annotation/freezed_annotation.dart';

import '../interfaces.dart';

part 'http_multipart_options.freezed.dart';

/// HTTP request options
@freezed
class HttpMultipartOptions with _$HttpMultipartOptions {
  /// Create a [HttpMultipartOptions]
  const factory HttpMultipartOptions({
    required List<HttpMultipartFile> files,
    Map<String, String>? fields,
  }) = _HttpMultipartOptions;
}
