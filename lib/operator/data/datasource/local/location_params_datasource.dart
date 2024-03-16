import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/response/location_params_model.dart';
import '../interfaces/intro/location_params_datasource.dart';

class LocationParamsLocalDatasource extends ILocationParamsDatasource {
  final IStorageClient<List<LocationParamsModel>> _storageClient;

  static const String _key = '@LocationParams';

  List<LocationParamsModel> _driverCache = [];

  /// Constructor of [LocationParamsLocalDatasource]
  LocationParamsLocalDatasource(this._storageClient);

  @override
  Future<List<LocationParamsModel>> get() async {
    if (_driverCache.isEmpty) {
      _driverCache = (await _storageClient.read(_key))
              ?.cast<LocationParamsModel>()
              .toList() ??
          [];
    }

    return _driverCache;
  }

  @override
  FutureOr<void> save(List<LocationParamsModel> items) async {
    List<LocationParamsModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _driverCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere(
        (l) =>
            ids.add(l.farm.farmCode) &&
            ids.add(l.field.fieldCode) &&
            ids.add(l.harvest.codigoSafra),
      );

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
  FutureOr<void> clear() {
    _storageClient.clear();
  }
}
