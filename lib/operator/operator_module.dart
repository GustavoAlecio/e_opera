import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import '../login/login.dart';
import 'data/data.dart';
import 'data/datasource/interfaces/harvest/driver_datasource.dart';
import 'data/datasource/interfaces/harvest/entity_datasource.dart';
import 'data/datasource/interfaces/harvest/product_datasource.dart';
import 'data/datasource/interfaces/harvest/shipping_company_datasource.dart';
import 'data/datasource/interfaces/harvest/subsidiary_datasource.dart';
import 'data/datasource/interfaces/harvest/variety_datasource.dart';
import 'data/datasource/interfaces/harvest/vehicle_datasource.dart';
import 'data/datasource/interfaces/intro/farm_datasource.dart';
import 'data/datasource/interfaces/intro/field_datasource.dart';
import 'data/datasource/interfaces/intro/harvest_datasource.dart';
import 'data/datasource/interfaces/intro/location_params_datasource.dart';
import 'data/datasource/local/local.dart';
import 'data/datasource/local/location_params_datasource.dart';
import 'data/models/response/location_params_model.dart';
import 'data/repositories/location_params_repository.dart';
import 'data/repositories/product_repository.dart';
import 'data/repositories/shipping_company_repository.dart';
import 'data/repositories/vehicle_repository.dart';
import 'domain/domain.dart';
import 'domain/entities/localization_params.dart';
import 'domain/repositories/destination_repository.dart';
import 'domain/repositories/driver_repository.dart';
import 'domain/repositories/field_repository.dart';
import 'domain/repositories/harvest_repository.dart';
import 'domain/repositories/location_params_repository.dart';
import 'domain/repositories/product_repository.dart';
import 'domain/repositories/shipping_company_repository.dart';
import 'domain/repositories/variety_repository.dart';
import 'domain/repositories/vehicle_repository.dart';
import 'domain/usecases/get_destinations_usecase.dart';
import 'domain/usecases/get_drivers_usecase.dart';
import 'domain/usecases/get_fields_usecase.dart';
import 'domain/usecases/get_harvests_usecase.dart';
import 'domain/usecases/get_location_params_usecase.dart';
import 'domain/usecases/get_loggedIn_user_usecase.dart';
import 'domain/usecases/get_products_usecase.dart';
import 'domain/usecases/get_shipping_companies_usecase.dart';
import 'domain/usecases/get_varieties_usecase.dart';
import 'domain/usecases/get_vehicles_usecase.dart';
import 'domain/usecases/logout_usecase.dart';
import 'domain/usecases/save_location_params_usecase.dart';
import 'operator.dart';
import 'presentation/views/destination_form/destination_data_viewmodel.dart';
import 'presentation/views/driver_form/driver_data_viewmodel.dart';
import 'presentation/views/home/home_viewmodel.dart';
import 'presentation/views/product_form/product_data_viewmodel.dart';
import 'presentation/views/qr_code_viewer/qr_code_viewer_page.dart';
import 'presentation/views/summary/summary_viewmodel.dart';

/// Login module
class OperatorModule extends Module {
  /// base path root to [OperatorModule]
  static const BasePath root = BasePath('/operator');

  ///
  static const BasePath intro = BasePath('/', root);

  ///
  static const BasePath home = BasePath('/home', root);

  ///
  static const BasePath productForm = BasePath('/product', root);

  ///
  static const BasePath driverForm = BasePath('/driver', root);

  ///
  static const BasePath destinationForm = BasePath('/destination', root);

  static const BasePath summaryPage = BasePath('/summary', root);

  static const BasePath qrCodeGenerator = BasePath('/qr_code_generator', root);

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          intro.path,
          child: (context, _) => const OperatorIntroPage(),
        ),
        ChildRoute(
          home.path,
          child: (context, _) => const HomePage(),
        ),
        ChildRoute(
          productForm.path,
          child: (context, _) => ProductDataPage(),
        ),
        ChildRoute(
          driverForm.path,
          child: (context, _) => DriverDataPage(),
        ),
        ChildRoute(
          destinationForm.path,
          child: (context, _) => DestinationDataPage(),
        ),
        ChildRoute(
          summaryPage.path,
          child: (context, _) => SummaryPage(),
        ),
        ChildRoute(
          qrCodeGenerator.path,
          child: (context, _) => QrCodeViewerPage(),
        ),
      ];

  @override
  List<Bind> get binds => [
        ..._adapters,
        ..._datasources,
        ..._repositories,
        ..._usecases,
        ..._viewmodel,
      ];

  static List<Bind> get _adapters => [
        Bind.lazySingleton<IHttpClient>(
          (i) => HttpAdapter(
            client: io.HttpClient(),
            baseUrl: 'http://198.27.117.155:8094/api/',
            apiVersion: 'v1',
          )..addInterceptors([
              LoggerInterceptor(),
              AuthorizationInterceptor(ModularDependencyManager.i()),
            ]),
        ),
        Bind.lazySingleton<IStorageClient<List<DriverModel>>>(
          (di) => HiveStorageAdapter('@Driver'),
        ),
        Bind.lazySingleton<IStorageClient<List<EntityModel>>>(
          (di) => HiveStorageAdapter('@Entity'),
        ),
        Bind.lazySingleton<IStorageClient<List<ProductModel>>>(
          (di) => HiveStorageAdapter('@Product'),
        ),
        Bind.lazySingleton<IStorageClient<List<ShippingCompanyModel>>>(
          (di) => HiveStorageAdapter('@ShippingCompany'),
        ),
        Bind.lazySingleton<IStorageClient<List<SubsidiaryModel>>>(
          (di) => HiveStorageAdapter('@Subsidiary'),
        ),
        Bind.lazySingleton<IStorageClient<List<VarietyModel>>>(
          (di) => HiveStorageAdapter('@Variety'),
        ),
        Bind.lazySingleton<IStorageClient<List<VehicleModel>>>(
          (di) => HiveStorageAdapter('@Vehicle'),
        ),
        Bind.lazySingleton<IStorageClient<List<FarmModel>>>(
          (di) => HiveStorageAdapter('@Farm'),
        ),
        Bind.lazySingleton<IStorageClient<List<HarvestModel>>>(
          (di) => HiveStorageAdapter('@Harvest'),
        ),
        Bind.lazySingleton<IStorageClient<List<FieldModel>>>(
          (di) => HiveStorageAdapter('@Field'),
        ),
        Bind.lazySingleton<IStorageClient<List<LocationParamsModel>>>(
          (di) => HiveStorageAdapter('@LocationParams'),
        ),
        Bind.lazySingleton<IStorageClient<List<LoginModel>>>(
          (di) => HiveStorageAdapter('@auth'),
        ),
      ];
  static List<Bind> get _datasources => [
        Bind.lazySingleton<IIntroDatasource>(
          (i) => IntroDatasource(i.get<IHttpClient>()),
        ),
        Bind.lazySingleton<IHarvestFormDatasource>(
          (i) => HarvestFormDatasource(i.get<IHttpClient>()),
        ),
        Bind.lazySingleton<IDriverDatasource>(
          (i) =>
              DriverLocalDatasource(i.get<IStorageClient<List<DriverModel>>>()),
        ),
        Bind.lazySingleton<IEntityDatasource>(
          (i) =>
              EntityLocalDatasource(i.get<IStorageClient<List<EntityModel>>>()),
        ),
        Bind.lazySingleton<IProductDatasource>(
          (i) => ProductLocalDatasource(
            i.get<IStorageClient<List<ProductModel>>>(),
          ),
        ),
        Bind.lazySingleton<IShippingCompanyDatasource>(
          (i) => ShippingCompanyLocalDatasource(
            i.get<IStorageClient<List<ShippingCompanyModel>>>(),
          ),
        ),
        Bind.lazySingleton<ISubsidiaryDatasource>(
          (i) => SubsidiaryLocalDatasource(
            i.get<IStorageClient<List<SubsidiaryModel>>>(),
          ),
        ),
        Bind.lazySingleton<IVarietyDatasource>(
          (i) => VarietyLocalDatasource(
            i.get<IStorageClient<List<VarietyModel>>>(),
          ),
        ),
        Bind.lazySingleton<IVehicleDatasource>(
          (i) => VehicleLocalDatasource(
            i.get<IStorageClient<List<VehicleModel>>>(),
          ),
        ),
        Bind.lazySingleton<IFarmDatasource>(
          (i) => FarmLocalDatasource(
            i.get<IStorageClient<List<FarmModel>>>(),
          ),
        ),
        Bind.lazySingleton<IFieldDatasource>(
          (i) => FieldLocalDatasource(
            i.get<IStorageClient<List<FieldModel>>>(),
          ),
        ),
        Bind.lazySingleton<IHarvestDatasource>(
          (i) => HarvestLocalDatasource(
            i.get<IStorageClient<List<HarvestModel>>>(),
          ),
        ),
        Bind.lazySingleton<ILocationParamsDatasource>(
          (i) => LocationParamsLocalDatasource(
            i.get<IStorageClient<List<LocationParamsModel>>>(),
          ),
        ),
        Bind.lazySingleton<ILoginDatasource>(
          (i) => LoginDatasource(
            i.get<IHttpClient>(),
          ),
        ),
        Bind.lazySingleton<ILoginLocalDatasource>(
          (i) => LoginLocalDatasource(
            i.get<IStorageClient<List<LoginModel>>>(),
          ),
        ),
      ];

  static List<Bind> get _repositories => [
        Bind.lazySingleton<IFarmRepository>(
          (i) => FarmRepository(
            i.get<IIntroDatasource>(),
            i.get<IFarmDatasource>(),
          ),
        ),
        Bind.lazySingleton<IFieldRepository>(
          (i) => FieldRepository(
            i.get<IIntroDatasource>(),
            i.get<IFieldDatasource>(),
          ),
        ),
        Bind.lazySingleton<IHarvestRepository>(
          (i) => HarvestRepository(
            i.get<IIntroDatasource>(),
            i.get<IHarvestDatasource>(),
          ),
        ),
        Bind.lazySingleton<IProductRepository>(
          (i) => ProductRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IProductDatasource>(),
          ),
        ),
        Bind.lazySingleton<IDriverRepository>(
          (i) => DriverRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IDriverDatasource>(),
          ),
        ),
        Bind.lazySingleton<IVarietyRepository>(
          (i) => VarietyRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IVarietyDatasource>(),
          ),
        ),
        Bind.lazySingleton<IDestinationRepository>(
          (i) => DestinationRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IEntityDatasource>(),
          ),
        ),
        Bind.lazySingleton<IShippingCompanyRepository>(
          (i) => ShippingCompanyRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IShippingCompanyDatasource>(),
          ),
        ),
        Bind.lazySingleton<IVehicleRepository>(
          (i) => VehicleRepository(
            i.get<IHarvestFormDatasource>(),
            i.get<IVehicleDatasource>(),
          ),
        ),
        Bind.lazySingleton<ILocationParamsRepository>(
          (i) => LocationParamsRepository(
            i.get<ILocationParamsDatasource>(),
          ),
        ),
        Bind.lazySingleton<ILoginRepository>(
          (i) => LoginRepository(
            i.get<ILoginDatasource>(),
            i.get<ILoginLocalDatasource>(),
          ),
        )
      ];

  static List<Bind> get _usecases => [
        Bind.factory<IGetFarmsUsecase>(
          (i) => GetFarmsUsecase(
            i.get<IFarmRepository>(),
          ),
        ),
        Bind.factory<IGetFieldsUsecase>(
          (i) => GetFieldsUsecase(
            i.get<IFieldRepository>(),
          ),
        ),
        Bind.factory<IGetHarvestsUsecase>(
          (i) => GetHarvestsUsecase(
            i.get<IHarvestRepository>(),
          ),
        ),
        Bind.factory<IGetDriversUsecase>(
          (i) => GetDriversUsecase(
            i.get<IDriverRepository>(),
          ),
        ),
        Bind.factory<IGetVarietiesUsecase>(
          (i) => GetVarietiesUsecase(
            i.get<IVarietyRepository>(),
          ),
        ),
        Bind.factory<IGetProductsUsecase>(
          (i) => GetProductsUsecase(
            i.get<IProductRepository>(),
          ),
        ),
        Bind.factory<IGetDestinationsUsecase>(
          (i) => GetDestinationsUsecase(
            i.get<IDestinationRepository>(),
          ),
        ),
        Bind.factory<IGetShippingCompaniesUsecase>(
          (i) => GetShippingCompaniesUsecase(
            i.get<IShippingCompanyRepository>(),
          ),
        ),
        Bind.factory<IGetVehiclesUsecase>(
          (i) => GetVehiclesUsecase(
            i.get<IVehicleRepository>(),
          ),
        ),
        Bind.factory<IUpdateLocalDatabaseUsecase>(
          (i) => UpdateLocalDatabaseUsecase(
            i.get<IFarmRepository>(),
            i.get<IDriverRepository>(),
            i.get<IFieldRepository>(),
            i.get<IDestinationRepository>(),
            i.get<IHarvestRepository>(),
            i.get<IProductRepository>(),
            i.get<IShippingCompanyRepository>(),
            i.get<IVarietyRepository>(),
            i.get<IVehicleRepository>(),
          ),
        ),
        Bind.factory<IGetLocationParamsLocallyUsecase>(
          (i) => GetLocationParamsLocallyUsecase(
            i.get<ILocationParamsRepository>(),
          ),
        ),
        Bind.factory<ISaveLocationParamsLocallyUsecase>(
          (i) => SaveLocationParamsLocallyUsecase(
            i.get<ILocationParamsRepository>(),
          ),
        ),
        Bind.factory<IGetLoggedInUserUsecase>(
          (i) => GetLoggedInUserUsecase(
            i.get<ILoginRepository>(),
          ),
        ),
        Bind.factory<ILogoutUsecase>(
          (i) => LogoutUsecase(
            i.get<ILoginRepository>(),
          ),
        ),
      ];

  static List<Bind> get _viewmodel => [
        Bind.lazySingleton<IntroViewModel>(
          (i) => IntroViewModel(
            i.get<IGetFarmsUsecase>(),
            i.get<IGetFieldsUsecase>(),
            i.get<IGetHarvestsUsecase>(),
            i.get<IGetLocationParamsLocallyUsecase>(),
            i.get<ISaveLocationParamsLocallyUsecase>(),
          ),
        ),
        Bind.lazySingleton<HomeViewModel>(
          (i) => HomeViewModel(
            i.get<IUpdateLocalDatabaseUsecase>(),
            i.get<IGetLoggedInUserUsecase>(),
            i.get<ILogoutUsecase>(),
          ),
        ),
        Bind.lazySingleton<ProductDataViewModel>(
          (i) => ProductDataViewModel(
            i.get<IGetDriversUsecase>(),
            i.get<IGetProductsUsecase>(),
            i.get<IGetVarietiesUsecase>(),
          ),
        ),
        Bind.lazySingleton<DriverDataViewModel>(
          (i) => DriverDataViewModel(
            i.get<IGetShippingCompaniesUsecase>(),
            i.get<IGetVehiclesUsecase>(),
          ),
        ),
        Bind.lazySingleton<DestinationDataViewModel>(
          (i) => DestinationDataViewModel(
            i.get<IGetDestinationsUsecase>(),
          ),
        ),
        Bind.lazySingleton<SummaryViewModel>(
          (i) => SummaryViewModel(),
        ),
      ];
}
