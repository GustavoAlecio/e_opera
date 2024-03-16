import '../../../../../core/core.dart';
import '../../models/response/farm_model.dart';
import '../../models/response/field_model.dart';
import '../../models/response/harvest_model.dart';

/// Intro Datasource
abstract class IIntroDatasource {
  /// Method to get all farms
  Future<List<FarmModel>> getFarms();
  Future<List<HarvestModel>> getHarvests();
  Future<List<FieldModel>> getFields();
}

/// Implementation of [IIntroDatasource]
class IntroDatasource implements IIntroDatasource {
  final IHttpClient _http;

  /// Constructor of [IntroDatasource]
  IntroDatasource(this._http);

  @override
  Future<List<FarmModel>> getFarms() async {
    final response = await _http.get('fazendas');
    final farmsJson =
        List<Map<String, dynamic>>.from(response.data['fazendas']);

    return List<FarmModel>.from(
      farmsJson.map(FarmModel.fromJson),
    );
  }

  @override
  Future<List<HarvestModel>> getHarvests() async {
    // final response = await _http.get('safra');
    // final harvestsJson = response.data['safra'] as List;
    final harvestsStatic = [
      HarvestModel(desSafra: 'SAFRA 2023/2024', codigoSafra: '2324')
    ];

    // return List<HarvestModel>.from(
    //     harvestsJson.map((record) => HarvestModel.fromJson(record)));
    return harvestsStatic;
  }

  @override
  Future<List<FieldModel>> getFields() async {
    final response = await _http.get('talhao');
    final fieldJson = response.data['talhao'] as List;

    return List<FieldModel>.from(
        fieldJson.map((record) => FieldModel.fromJson(record)));
  }
}
