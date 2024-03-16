import 'dart:async';

import '../../../../core/core.dart';
import '../../../login.dart';

///
///  Login Local Datasource
///
abstract class ILoginLocalDatasource {
  /// Get all saved [LoginModel]
  FutureOr<List<LoginModel>> get({int id});

  /// delete a [LoginModel] by the given id
  FutureOr<void> delete(int id);

  /// Clear the entire storage
  FutureOr<void> clear() {}

  /// save a [LoginModel]
  FutureOr<void> save(List<LoginModel> items);
}

///
/// [LoginLocalDatasource] implementation
///
class LoginLocalDatasource extends ILoginLocalDatasource {
  final IStorageClient<List<LoginModel>> _storageClient;

  static const String _key = '@Logins';

  List<LoginModel> _loginsCache = [];

  ///
  /// Creates a new instance of [LoginLocalDatasource]
  ///
  LoginLocalDatasource(this._storageClient);

  @override
  FutureOr<List<LoginModel>> get({int? id}) async {
    if (_loginsCache.isEmpty) {
      _loginsCache =
          (await _storageClient.read(_key))?.cast<LoginModel>().toList() ?? [];
    }

    if (id != null) {
      return _loginsCache.where((l) => l.id == id).toList();
    }

    return _loginsCache;
  }

  @override
  FutureOr<void> delete(int id) async {
    final res = await get();
    res.removeWhere((l) => l.id == id);
    await _storageClient.save(_key, res);
  }

  @override
  FutureOr<void> save(List<LoginModel> items) async {
    List<LoginModel> logins = await get();

    final ids = <int>{};

    // avoid duplicates
    _loginsCache = [
      ...items,
      ...logins,
    ]..retainWhere((l) => ids.add(l.id));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._loginsCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }
}
