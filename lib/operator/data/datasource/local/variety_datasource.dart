import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../interfaces/harvest/variety_datasource.dart';

class VarietyLocalDatasource extends IVarietyDatasource {
  final IStorageClient<List<VarietyModel>> _storageClient;

  static const String _key = '@Variety';

  List<VarietyModel> _varietyCache = [];

  /// Constructor of [VarietyLocalDatasource]
  VarietyLocalDatasource(this._storageClient);

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<List<VarietyModel>> get() async {
    if (_varietyCache.isEmpty) {
      _varietyCache =
          (await _storageClient.read(_key))?.cast<VarietyModel>().toList() ??
              [];
    }

    return _varietyCache;
  }

  @override
  FutureOr<void> save(List<VarietyModel> items) async {
    List<VarietyModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _varietyCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((v) => ids.add(v.productCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._varietyCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
