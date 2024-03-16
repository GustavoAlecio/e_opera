import '../../../../core/core.dart';
import '../../models/response/driver_model.dart';
import '../../models/response/entity_model.dart';
import '../../models/response/product_model.dart';
import '../../models/response/shipping_company_model.dart';
import '../../models/response/subsidiary_model.dart';
import '../../models/response/variety_model.dart';
import '../../models/response/vehicle_model.dart';

/// HarvestForm Datasource
abstract class IHarvestFormDatasource {
  /// Method to get all farms
  Future<List<DriverModel>> getDrivers();
  Future<List<ProductModel>> getProducts();
  Future<List<VarietyModel>> getVarieties();
  Future<List<VehicleModel>> getVehicles();
  Future<List<ShippingCompanyModel>> getShippingCompanies();
  Future<List<EntityModel>> getEntities();
  Future<List<SubsidiaryModel>> getSubsidiaries();
}

/// Implementation of [IHarvestFormDatasource]
class HarvestFormDatasource implements IHarvestFormDatasource {
  final IHttpClient _http;

  /// Constructor of [HarvestFormDatasource]
  HarvestFormDatasource(this._http);

  @override
  Future<List<DriverModel>> getDrivers() async {
    final response = await _http.get('motoristas');
    final farmsJson =
        List<Map<String, dynamic>>.from(response.data['motoristas']);

    return List<DriverModel>.from(
      farmsJson.map(DriverModel.fromJson),
    );
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await _http.get('produtos');
    final harvestsJson = response.data['produtos'] as List;

    return List<ProductModel>.from(
        harvestsJson.map((record) => ProductModel.fromJson(record)));
  }

  @override
  Future<List<VarietyModel>> getVarieties() async {
    final response = await _http.get('variedades');
    final fieldJson = response.data['variedades'] as List;

    return List<VarietyModel>.from(
        fieldJson.map((record) => VarietyModel.fromJson(record)));
  }

  @override
  Future<List<ShippingCompanyModel>> getShippingCompanies() async {
    // final response = await _http.get('transportadoras');
    // final fieldJson = response.data['transportadoras'] as List;

    var staticShippingCompanies = [
      {
        "nreduzTransportadora": "LC ENCOMENDAS E",
        "codTransportadora": "029998",
        "nomeTransportadora": "LC ENCOMENDAS E CARGAS LTDA"
      }
    ];

    return List<ShippingCompanyModel>.from(staticShippingCompanies
        .map((record) => ShippingCompanyModel.fromJson(record)));
    // return List<ShippingCompanyModel>.from(
    //     fieldJson.map((record) => ShippingCompanyModel.fromJson(record)));
  }

  @override
  Future<List<VehicleModel>> getVehicles() async {
    final response = await _http.get('veiculos');
    final fieldJson = response.data['veiculos'] as List;

    return List<VehicleModel>.from(
        fieldJson.map((record) => VehicleModel.fromJson(record)));
  }

  @override
  Future<List<EntityModel>> getEntities() async {
    // final response = await _http.get('entidades');
    // final fieldJson = response.data['entidades'] as List;
    var staticEntities = [
      {
        "codEntidade": "000001",
        "lojEntidade": "0001",
        "nomeEntidade": "ENTIDADE FAZENDA 01",
        "nomeLojEntidade": "FAZENDA 01"
      }
    ];

    // return List<EntityModel>.from(
    //     fieldJson.map((record) => EntityModel.fromJson(record)));
    return List<EntityModel>.from(
        staticEntities.map((record) => EntityModel.fromJson(record)));
  }

  @override
  Future<List<SubsidiaryModel>> getSubsidiaries() async {
    final response = await _http.get('filiais');
    final fieldJson = response.data['filiais'] as List;

    return List<SubsidiaryModel>.from(
        fieldJson.map((record) => SubsidiaryModel.fromJson(record)));
  }
}
