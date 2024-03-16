import 'dart:async';

import '../../../../../core/core.dart';
import '../../../models/response/subsidiary_model.dart';

abstract class ISubsidiaryDatasource {
  Future<List<SubsidiaryModel>> get();
  FutureOr<void> clear();
  FutureOr<void> save(List<SubsidiaryModel> items);
  FutureOr<void> delete(int id);
}
