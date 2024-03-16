import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../data.dart';
import '../../models/request/collect_model.dart';
import '../interfaces/collect_datasource.dart';

class CollectLocalDatasource extends ICollectLocalDatasource {
  final IStorageClient<List<CollectModel>> _storageClient;

  static const String _key = '@Collect';

  List<CollectModel> _CollectCache = [];

  /// Constructor of [CollectLocalDatasource]
  CollectLocalDatasource(this._storageClient);

  @override
  Future<List<CollectModel>> get() async {
    if (_CollectCache.isEmpty) {
      _CollectCache =
          (await _storageClient.read(_key))?.cast<CollectModel>().toList() ??
              [];
    }

    return _CollectCache;
  }

  @override
  FutureOr<void> save(List<CollectModel> items) async {
    List<CollectModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _CollectCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((d) => ids.add(d.id));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._CollectCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(String id) async {
    // TODO: implement delete
    await _storageClient.delete(id);
  }

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<Either<Failure, CollectModel>> collect(CollectModel params) {
    // TODO: implement collect
    throw UnimplementedError();
  }
}
