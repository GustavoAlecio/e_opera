import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/response/entity_model.dart';
import '../interfaces/harvest/driver_datasource.dart';
import '../interfaces/intro/harvest_datasource.dart';

class HarvestLocalDatasource extends IHarvestDatasource {
  final IStorageClient<List<HarvestModel>> _storageClient;

  static const String _key = '@Harvest';

  List<HarvestModel> _driverCache = [];

  /// Constructor of [HarvestLocalDatasource]
  HarvestLocalDatasource(this._storageClient);

  @override
  Future<List<HarvestModel>> get() async {
    if (_driverCache.isEmpty) {
      _driverCache =
          (await _storageClient.read(_key))?.cast<HarvestModel>().toList() ??
              [];
    }

    return _driverCache;
  }

  @override
  FutureOr<void> save(List<HarvestModel> items) async {
    List<HarvestModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _driverCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((h) => ids.add(h.codigoSafra));

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
