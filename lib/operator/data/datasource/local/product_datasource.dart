import 'dart:async';

import '../../../../core/core.dart';
import '../../data.dart';
import '../interfaces/harvest/product_datasource.dart';

class ProductLocalDatasource extends IProductDatasource {
  final IStorageClient<List<ProductModel>> _storageClient;

  static const String _key = '@Product';

  List<ProductModel> _productCache = [];

  /// Constructor of [ProductLocalDatasource]
  ProductLocalDatasource(this._storageClient);

  @override
  Future<List<ProductModel>> get() async {
    if (_productCache.isEmpty) {
      _productCache =
          (await _storageClient.read(_key))?.cast<ProductModel>().toList() ??
              [];
    }

    return _productCache;
  }

  @override
  FutureOr<void> save(List<ProductModel> items) async {
    List<ProductModel> logins = await get();

    final ids = <String>{};

    // avoid duplicates
    _productCache = [
      ...items,
      ...logins,
      // ]..retainWhere((l) => ids.add(l.id));
    ]..retainWhere((d) => ids.add(d.productCode));

    // copy the account list
    // remove all items that are not meant to be remembered
    // or are empty
    final itemsToSave = [..._productCache];

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
