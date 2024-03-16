import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/response/entity_model.dart';
import '../interfaces/harvest/driver_datasource.dart';
import '../interfaces/intro/field_datasource.dart';

class FieldLocalDatasource extends IFieldDatasource {
  final IStorageClient<List<FieldModel>> _storageClient;

  static const String _key = '@Field';

  List<FieldModel> _driverCache = [];

  /// Constructor of [FieldLocalDatasource]
  FieldLocalDatasource(this._storageClient);

  @override
  Future<List<FieldModel>> get() async {
    if (_driverCache.isEmpty) {
      _driverCache =
          (await _storageClient.read(_key))?.cast<FieldModel>().toList() ?? [];
    }

    return _driverCache;
  }

  @override
  FutureOr<void> save(List<FieldModel> items) async {
    List<FieldModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _driverCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((f) => ids.add(f.fieldCode));

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
