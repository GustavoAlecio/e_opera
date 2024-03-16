import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../interfaces/harvest/vehicle_datasource.dart';

class VehicleLocalDatasource extends IVehicleDatasource {
  final IStorageClient<List<VehicleModel>> _storageClient;

  static const String _key = '@Vehicle';

  List<VehicleModel> _vehicleCache = [];

  /// Constructor of [VehicleLocalDatasource]
  VehicleLocalDatasource(this._storageClient);

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<List<VehicleModel>> get() async {
    if (_vehicleCache.isEmpty) {
      _vehicleCache =
          (await _storageClient.read(_key))?.cast<VehicleModel>().toList() ??
              [];
    }

    return _vehicleCache;
  }

  @override
  FutureOr<void> save(List<VehicleModel> items) async {
    List<VehicleModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _vehicleCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((v) => ids.add(v.vehicleCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._vehicleCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
