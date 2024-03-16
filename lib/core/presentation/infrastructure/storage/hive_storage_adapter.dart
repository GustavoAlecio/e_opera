import 'dart:async';

import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import 'storage.dart';

/// Storage implementation with Hive
/// It can receive two generic parameters
/// T for data type that will be save or read
/// e.g: instance.read() will return the data with T type
/// K for the box type
/// e.g: Hive.openBox<Person>('personsWithLists')
class HiveStorageAdapter<T> implements IStorageClient<T> {
  /// create new instance and initialize de hive box
  HiveStorageAdapter(String boxKey) {
    _init(boxKey);
  }

  final Completer<Box> _completer = Completer<Box>();

  Future<Box> get _box => _completer.future;

  _init(String boxKey) async {
    _completer.complete(await Hive.openBox(boxKey));
  }

  @override
  Future<void> clear() async {
    (await _box).clear();
  }

  @override
  FutureOr<dynamic> read(String key) async => (await _box).get(key);

  @override
  Future<void> save(String key, T value) async {
    try {
      var box = await _box;
      box.put(key, value);
    } catch (e, s) {
      Logger().e(e.toString(), time: null, error: e, stackTrace: s);
    }
  }

  @override
  FutureOr<void> delete(String key) async {
    (await _box).delete(key);
  }

  @override
  Future<Map> readAll() async {
    return (await _box).toMap();
  }
}
