import 'dart:io' as io;

import 'package:eopera/driver/domain/repositories/collect_repository.dart';
import 'package:eopera/driver/domain/usecases/get_loggedIn_user_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import '../login/data/data.dart';
import '../login/domain/domain.dart';
import 'data/data.dart';
import 'data/datasource/interfaces/collect_datasource.dart';
import 'data/datasource/local/collect_datasource.dart';
import 'data/datasource/remote/collect_datasource.dart';
import 'data/models/request/collect_model.dart';
import 'data/repositories/collect_repository.dart';
import 'domain/domain.dart';
import 'domain/usecases/get_pending_collects_usecase.dart';
import 'domain/usecases/logout_usecase.dart';
import 'domain/usecases/save_collect_to_localstorage.dart';
import 'domain/usecases/send_collect_usecase.dart';
import 'domain/usecases/synchronize_local_database_usecase.dart';
import 'presentation/views/home_driver/home_driver_page.dart';
import 'presentation/views/home_driver/home_driver_viewmodel.dart';
import 'presentation/views/qrcode_read/qrcode_read_driver_page.dart';
import 'presentation/views/qrcode_read/qrcode_read_driver_viewmodel.dart';
import 'presentation/views/summary_driver/summary_driver_page.dart';
import 'presentation/views/summary_driver/summary_driver_viewmodel.dart';

/// Login module
class DriverModule extends Module {
  /// base path root to [DriverModule]
  static const BasePath root = BasePath('/driver');

  ///
  static const BasePath home = BasePath('/', root);
  static const BasePath qrCodeScanner = BasePath('/scanner', home);
  // static const BasePath qrCodeSummary = BasePath('/summary', qrCodeScanner);
  static const BasePath qrCodeSummary = BasePath('/summary', home);

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          home.path,
          child: (context, _) => const DriverHomePage(),
        ),
        ChildRoute(
          qrCodeScanner.path,
          child: (context, _) => DriverQrCodeReadPage(),
        ),
        ChildRoute(
          qrCodeSummary.path,
          child: (context, _) => SummaryDriverPage(),
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
        Bind.lazySingleton<IStorageClient<List<LoginModel>>>(
          (di) => HiveStorageAdapter('@auth'),
        ),
        Bind.lazySingleton<IStorageClient<List<CollectModel>>>(
          (di) => HiveStorageAdapter('@Collect'),
        ),
      ];

  static List<Bind> get _datasources => [
        Bind.lazySingleton<ICollectDatasource>(
          (i) => CollectDatasource(
            i.get<IHttpClient>(),
          ),
        ),
        Bind.lazySingleton<ICollectLocalDatasource>(
          (i) => CollectLocalDatasource(
            i.get<IStorageClient<List<CollectModel>>>(),
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
        Bind.lazySingleton<ICollectRepository>(
          (i) => CollectRepository(
            i.get<ICollectDatasource>(),
            i.get<ICollectLocalDatasource>(),
          ),
        ),
        Bind.lazySingleton<ILoginRepository>(
          (i) => LoginRepository(
            i.get<ILoginDatasource>(),
            i.get<ILoginLocalDatasource>(),
          ),
        )
        // Bind.lazySingleton<IFieldRepository>(
        //   (i) => FieldRepository(i.get<IIntroDatasource>()),
        // ),
        // Bind.lazySingleton<IHarvestRepository>(
        //   (i) => HarvestRepository(i.get<IIntroDatasource>()),
        // ),
      ];

  static List<Bind> get _usecases => [
        Bind.factory<ISendCollectUsecase>(
          (i) => SendCollectUsecase(
            i.get<ICollectRepository>(),
          ),
        ),
        Bind.factory<ISaveCollectToLocalStorageUsecase>(
          (i) => SaveCollectToLocalStorageUsecase(
            i.get<ICollectRepository>(),
          ),
        ),
        Bind.factory<ISynchronizeLocalDatabaseUsecase>(
          (i) => SynchronizeLocalDatabaseUsecase(
            i.get<ICollectRepository>(),
          ),
        ),

        Bind.factory<IGetLoggedInUserUsecase>(
          (i) => GetLoggedInUserUsecase(
            i.get<ILoginRepository>(),
          ),
        ),
        Bind.factory<IGetPendingCollectsUserUsecase>(
          (i) => GetPendingCollectsUserUsecase(
            i.get<ICollectRepository>(),
          ),
        ),
        Bind.factory<ILogoutUsecase>(
          (i) => LogoutUsecase(
            i.get<ILoginRepository>(),
          ),
        ),
        // Bind.factory<IGetFieldsUsecase>(
        //     (i) => GetFieldsUsecase(i.get<IFieldRepository>())),
        // Bind.factory<IGetHarvestsUsecase>(
        //     (i) => GetHarvestsUsecase(i.get<IHarvestRepository>()))
      ];

  static List<Bind> get _viewmodel => [
        // Bind.lazySingleton<IntroViewModel>(
        //   (i) => IntroViewModel(i.get<IGetFarmsUsecase>(),
        //       i.get<IGetFieldsUsecase>(), i.get<IGetHarvestsUsecase>()),
        // ),
        Bind.lazySingleton<DriverHomeViewModel>(
          (i) => DriverHomeViewModel(
            i.get<IGetLoggedInUserUsecase>(),
            i.get<IGetPendingCollectsUserUsecase>(),
            i.get<ISynchronizeLocalDatabaseUsecase>(),
            i.get<ILogoutUsecase>(),
          ),
        ),
        Bind.lazySingleton<DriverQrCodeReadViewModel>(
          (i) => DriverQrCodeReadViewModel(),
        ),
        Bind.lazySingleton<SummaryDriverViewModel>(
          (i) => SummaryDriverViewModel(
            i.get<ISendCollectUsecase>(),
            i.get<ISaveCollectToLocalStorageUsecase>(),
          ),
        ),
      ];
}
