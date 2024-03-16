import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/product_model.dart';

abstract class IProductDatasource {
  Future<List<ProductModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<ProductModel> items);
}
