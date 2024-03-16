import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/field_model.dart';

abstract class IFieldDatasource {
  Future<List<FieldModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<FieldModel> items);
  FutureOr<void> delete(int id);
}
