import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../driver.dart';
import '../../models/request/collect_model.dart';

/// Collect Datasource
abstract class ICollectDatasource {
  /// Method to Collect
  Future<Either<Failure, CollectModel>> collect(CollectModel params);
}

/// Implementation of [ICollectDatasource]
class CollectDatasource implements ICollectDatasource {
  final IHttpClient _http;

  /// Constructor of [CollectDatasource]
  CollectDatasource(this._http);

  @override
  Future<Either<Failure, CollectModel>> collect(CollectModel params) async {
    try {
      final response = await _http.post('pre-romaneio', body: params.toJson());
      return Either.cond(
        () => !response.status.code.toString().contains('4'),
        () => params,
        () => Failure.badRequest(),
      );
    } catch (error) {
      Log.e(error);

      return const Left(Failure.badRequest());
    }
  }
}
