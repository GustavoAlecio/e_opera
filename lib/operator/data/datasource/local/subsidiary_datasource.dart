import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../interfaces/harvest/subsidiary_datasource.dart';

class SubsidiaryLocalDatasource extends ISubsidiaryDatasource {
  final IStorageClient<List<SubsidiaryModel>> _storageClient;

  static const String _key = '@Subsidiary';

  List<SubsidiaryModel> _subsidiaryCache = [];

  /// Constructor of [SubsidiaryLocalDatasource]
  SubsidiaryLocalDatasource(this._storageClient);

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<List<SubsidiaryModel>> get() async {
    if (_subsidiaryCache.isEmpty) {
      _subsidiaryCache =
          (await _storageClient.read(_key))?.cast<SubsidiaryModel>().toList() ??
              [];
    }

    return _subsidiaryCache;
  }

  @override
  FutureOr<void> save(List<SubsidiaryModel> items) async {
    List<SubsidiaryModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _subsidiaryCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((s) => ids.add(s.subsidiaryCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._subsidiaryCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
