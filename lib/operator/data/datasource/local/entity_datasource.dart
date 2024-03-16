import 'dart:async';

import '../../../../core/core.dart';
import '../../models/response/entity_model.dart';
import '../interfaces/harvest/entity_datasource.dart';

class EntityLocalDatasource extends IEntityDatasource {
  final IStorageClient<List<EntityModel>> _storageClient;

  static const String _key = '@Entities';

  List<EntityModel> _entityCache = [];

  /// Constructor of [EntityLocalDatasource]
  EntityLocalDatasource(this._storageClient);

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<List<EntityModel>> get() async {
    if (_entityCache.isEmpty) {
      _entityCache =
          (await _storageClient.read(_key))?.cast<EntityModel>().toList() ?? [];
    }

    return _entityCache;
  }

  @override
  FutureOr<void> save(List<EntityModel> items) async {
    List<EntityModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _entityCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((l) => ids.add(l.entityCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._entityCache];

    await _storageClient.save(_key, itemsToSave);
  }
}
