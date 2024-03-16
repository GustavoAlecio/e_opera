import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/entity_model.dart';

abstract class IEntityDatasource {
  Future<List<EntityModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<EntityModel> items);
}
