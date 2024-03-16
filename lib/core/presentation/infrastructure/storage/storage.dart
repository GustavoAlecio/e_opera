import 'dart:async';

///
/// Handle data persistence in local storage
///
abstract class IStorageClient<T> {
  ///
  /// Delete data by [key]. If fails, throws a DeleteLocalStorageException
  ///
  FutureOr<void> delete(String key);

  ///
  /// Save data, indexed by [key]. If fails, throws a SaveLocalStorageException
  ///
  FutureOr<void> save(String key, T value);

  ///
  /// read the data from storage. If fails, throws a
  /// FetchLocalStorageException
  ///
  FutureOr<dynamic> read(String key);

  ///
  /// read the data from storage. If fails, throws a
  /// FetchLocalStorageException
  ///
  FutureOr<Map> readAll();

  /// Clear all the data from storage
  FutureOr<void> clear() {}
}
