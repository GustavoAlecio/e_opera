import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';
import '../../../domain/entities/collect.dart';
import '../../../domain/entities/form_data/harvest_form.dart';

part 'qrcode_read_driver_state.freezed.dart';

@freezed

/// State of QrCodeRead
sealed class DriverQrCodeReadState extends ViewModelState
    with _$DriverQrCodeReadState {
  /// The initial [DriverQrCodeReadState] state
  factory DriverQrCodeReadState.initial() = DriverInitialQrCodeRead;

  /// The loading [DriverQrCodeReadState] state
  factory DriverQrCodeReadState.error() = DriverErrorQrCodeRead;

  /// The loading [DriverQrCodeReadState] state
  factory DriverQrCodeReadState.loading() = DriverLoadingQrCodeRead;

  /// The user [DriverQrCodeReadState] state
  factory DriverQrCodeReadState.success(HarvestForm collect) =
      DriverSuccessQrCodeRead;
}
