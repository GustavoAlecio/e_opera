import 'dart:async';
import '../../../../../core/core.dart';

import '../../../models/response/shipping_company_model.dart';

abstract class IShippingCompanyDatasource {
  Future<List<ShippingCompanyModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<ShippingCompanyModel> items);
  FutureOr<void> delete(int id);
}
