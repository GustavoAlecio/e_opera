import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../interfaces/harvest/shipping_company_datasource.dart';

class ShippingCompanyLocalDatasource extends IShippingCompanyDatasource {
  final IStorageClient<List<ShippingCompanyModel>> _storageClient;

  static const String _key = '@ShippingCompany';

  List<ShippingCompanyModel> _shippingCompanyCache = [];

  /// Constructor of [ShippingCompanyLocalDatasource]
  ShippingCompanyLocalDatasource(this._storageClient);

  @override
  FutureOr<void> clear() async {
    // TODO: implement clear
    await _storageClient.clear();
  }

  @override
  Future<List<ShippingCompanyModel>> get() async {
    if (_shippingCompanyCache.isEmpty) {
      _shippingCompanyCache = (await _storageClient.read(_key))
              ?.cast<ShippingCompanyModel>()
              .toList() ??
          [];
    }

    return _shippingCompanyCache;
  }

  @override
  FutureOr<void> save(List<ShippingCompanyModel> items) async {
    List<ShippingCompanyModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _shippingCompanyCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((l) => ids.add(l.shippingCompanyCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._shippingCompanyCache];

    await _storageClient.save(_key, itemsToSave);
  }

  @override
  FutureOr<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
