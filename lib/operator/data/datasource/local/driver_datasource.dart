import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/response/entity_model.dart';
import '../interfaces/harvest/driver_datasource.dart';

class DriverLocalDatasource extends IDriverDatasource {
  final IStorageClient<List<DriverModel>> _storageClient;

  static const String _key = '@Driver';

  List<DriverModel> _driverCache = [];

  /// Constructor of [DriverLocalDatasource]
  DriverLocalDatasource(this._storageClient);

  @override
  Future<List<DriverModel>> get() async {
    if (_driverCache.isEmpty) {
      _driverCache =
          (await _storageClient.read(_key))?.cast<DriverModel>().toList() ?? [];
    }

    return _driverCache;
  }

  @override
  FutureOr<void> save(List<DriverModel> items) async {
    List<DriverModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _driverCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((d) => ids.add(d.driverCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._driverCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }
}
