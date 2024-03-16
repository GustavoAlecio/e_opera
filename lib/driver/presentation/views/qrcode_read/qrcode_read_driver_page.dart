// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/core.dart';
import '../../../driver_module.dart';
import 'qrcode_read_driver_state.dart';
import 'qrcode_read_driver_viewmodel.dart';

class DriverQrCodeReadPage extends StatefulWidget {
  DriverQrCodeReadPage({super.key});

  @override
  State<StatefulWidget> createState() => _DriverQrCodeReadPageState();
}

class _DriverQrCodeReadPageState
    extends ViewState<DriverQrCodeReadPage, DriverQrCodeReadViewModel> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;
  @override
  void initState() {
    super.initState();
    // viewModel.getLocationParams();
  }

  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //     ModalRoute.of(context)!.settings.arguments as LocationParams;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.21, -0.98),
          end: Alignment(0.21, 0.98),
          colors: [Color(0xFF93ECB0), Color(0xFF074624)],
        ),
      ),
      child:
          ViewModelConsumer<DriverQrCodeReadViewModel, DriverQrCodeReadState>(
        viewModel: viewModel,
        // Eventos que não precisam rebuildar a tela
        // Eg. Success que vai para a próxima tela
        listener: (context, state) => switch (state) {
          DriverSuccessQrCodeRead(:final collect) => {
              Nav.pushNamed(DriverModule.qrCodeSummary, arguments: collect)
            },
          _ => null,
        },
        builder: (context, state) {
          return switch (state) {
            DriverInitialQrCodeRead() => Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                      child: MobileScanner(
                    onDetect: _foundBarCode,
                    controller: cameraController,
                    overlay: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Icon(
                            Icons.camera_enhance_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: Dimension(6).height),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimension(5).width),
                              child: Text(
                                  'Aponte a câmera para o QR Code para realizar a coleta',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            )),
                        // Container(
                        //   width: double.infinity,
                        //   margin: EdgeInsets.only(top: Dimension(12).height),
                        //   child: Icon(
                        //     Icons.crop_free_sharp,
                        //     color: Colors.white,
                        //     // size: Dimension(40).value,
                        //   ),
                        // ),
                      ],
                    ),
                  )),
                ),
              ),
            DriverLoadingQrCodeRead() => Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            DriverErrorQrCodeRead() => Scaffold(
                  body: Center(
                /// TODO: tela de erro
                child: Text('Erro'),
              )),
            _ => const SizedBox.shrink()
          };
        },
      ),
    );
  }

  void _foundBarCode(BarcodeCapture barcode) {
    Barcode qrCodeData = barcode.barcodes.first;
    viewModel.readQrCode(qrCodeData.rawValue.value);
  }
}
