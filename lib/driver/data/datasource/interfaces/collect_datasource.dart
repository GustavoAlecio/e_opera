import 'dart:async';

import '../../models/request/collect_model.dart';

abstract class ICollectLocalDatasource {
  Future<List<CollectModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<CollectModel> items);
  FutureOr<void> delete(String id);
}
