import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/core.dart';
import 'driver/data/models/request/collect_model.dart';
import 'driver/driver_module.dart';
import 'login/login.dart';
import 'operator/data/data.dart';
import 'operator/data/models/response/location_params_model.dart';
import 'operator/operator_module.dart';

/// Main Module
class MainModule extends Module {
  final HiveInterface? _hive;
  MainModule._([this._hive]) {
    _registerAdapters();
  }

  // Register manually one by one, registering dynamically can cause issues
  void _registerAdapters() {
    final loginModelAdapter = LoginModelAdapter();
    final farmModelAdapter = FarmModelAdapter();
    final fieldModelAdapter = FieldModelAdapter();
    final harvestModelAdapter = HarvestModelAdapter();
    final driverModelAdapter = DriverModelAdapter();
    final entityModelAdapter = EntityModelAdapter();
    final productModelAdapter = ProductModelAdapter();
    final shippingCompanyModelAdapter = ShippingCompanyModelAdapter();
    final subsidiaryModelAdapter = SubsidiaryModelAdapter();
    final varietyModelAdapter = VarietyModelAdapter();
    final vehicleModelAdapter = VehicleModelAdapter();
    final locationParamsModelAdapter = LocationParamsModelAdapter();
    final collectModelAdapter = CollectModelAdapter();

    if (!(_hive?.isAdapterRegistered(loginModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(loginModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(farmModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(farmModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(fieldModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(fieldModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(harvestModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(harvestModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(driverModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(driverModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(entityModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(entityModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(productModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(productModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(shippingCompanyModelAdapter.typeId) ??
        false)) {
      _hive?.registerAdapter(shippingCompanyModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(subsidiaryModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(subsidiaryModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(varietyModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(varietyModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(vehicleModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(vehicleModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(locationParamsModelAdapter.typeId) ??
        false)) {
      _hive?.registerAdapter(locationParamsModelAdapter);
    }

    if (!(_hive?.isAdapterRegistered(collectModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(collectModelAdapter);
    }
  }

  /// creates new instance and register hive adapters
  factory MainModule.forRoot({required HiveInterface hive}) =>
      MainModule._(hive);

  ///
  static const BasePath loginModule = BasePath('/');

  ///
  static const BasePath operatorModule = BasePath('/operator/');
  static const BasePath driverModule = BasePath('/driver/');

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(loginModule.path, module: LoginModule()),
        ModuleRoute(operatorModule.path, module: OperatorModule()),
        ModuleRoute(driverModule.path, module: DriverModule()),
      ];
}
