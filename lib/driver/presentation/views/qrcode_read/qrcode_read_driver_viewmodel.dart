import 'dart:convert';

import '../../../../core/core.dart';
import '../../../domain/domain.dart';
import '../../../domain/entities/collect.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../driver_module.dart';
import 'qrcode_read_driver_state.dart';

/// ViewModel of [LoginPage]
class DriverQrCodeReadViewModel extends ViewModel<DriverQrCodeReadState> {
  /// Constructor of [DriverQrCodeReadViewModel]
  DriverQrCodeReadViewModel() : super(DriverQrCodeReadState.initial());

  /// Method to realize login
  Future<void> getCollectFromJson(String qrCodeDataJson) async {
    emit(DriverLoadingQrCodeRead());

    // final loginParams = LoginParams(user: user, password: password);
    // final usecase = await _loginUsecase(loginParams);

    // final newState = usecase.fold((l) => ErrorLogin(), (r) => SuccessLogin());

    // emit(newState);
    // emit(DriverSuccessQrCodeRead());
  }

  Future<void> readQrCode(String qrCodeDataString) async {
    emit(DriverLoadingQrCodeRead());
    print(jsonDecode(qrCodeDataString));
    final _collect = HarvestForm.fromJson(jsonDecode(qrCodeDataString));

    emit(DriverSuccessQrCodeRead(_collect));
  }

  // void navigateToQrCodeReadPage() {
  //   switch (state) {
  //     case LoadedQrCodeRead(
  //       ):
  //       {
  //         LocationParams locationParams = LocationParams(
  //           farm: selectedFarm!,
  //           harvest: selectedHarvest!,
  //           field: selectedField!,
  //         );
  //         Nav.pushNamed(OperatorModule.QrCodeRead, arguments: locationParams);
  //       }
  //     default:
  //       null;
  //   }
}
