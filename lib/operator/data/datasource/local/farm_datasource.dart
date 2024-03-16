import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/response/entity_model.dart';
import '../interfaces/harvest/driver_datasource.dart';
import '../interfaces/intro/farm_datasource.dart';

class FarmLocalDatasource extends IFarmDatasource {
  final IStorageClient<List<FarmModel>> _storageClient;

  static const String _key = '@Farm';

  List<FarmModel> _driverCache = [];

  /// Constructor of [FarmLocalDatasource]
  FarmLocalDatasource(this._storageClient);

  @override
  Future<List<FarmModel>> get() async {
    if (_driverCache.isEmpty) {
      _driverCache =
          (await _storageClient.read(_key))?.cast<FarmModel>().toList() ?? [];
    }

    return _driverCache;
  }

  @override
  FutureOr<void> save(List<FarmModel> items) async {
    List<FarmModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _driverCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((f) => ids.add(f.farmCode));

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
