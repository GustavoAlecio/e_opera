import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../domain/entities/harvest_params.dart';
import '../../../operator_module.dart';

class QrCodeViewerPage extends StatefulWidget {
  // const CodeViewerPage({Key key}) : super(key: key);

  @override
  State<QrCodeViewerPage> createState() => _QrCodeViewerPageState();
}

class _QrCodeViewerPageState extends State<QrCodeViewerPage> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as HarvestForm;
    // final routeArgs =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Geração do QR Code'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: _buildQrCode(routeArgs, 300),
              width: 400,
              height: 400,
            ),
            SizedBox(height: 16.0),
            _buildSubmitButton(routeArgs)
            // TextButton(
            //   style: TextButton.styleFrom(primary: Colors.blue),
            //   onPressed: _returnToHomePage,
            //   child: const Text("Voltar para a tela inicial"),
            // )
          ],
        ),
      ),
    );
  }

  HarvestForm _resetFormData(HarvestForm formData) {
    return HarvestForm(location: formData.location);
  }

  Widget _buildSubmitButton(HarvestForm formData) {
    return ElevatedButton(
      onPressed: () {
        Nav.navigate(
          OperatorModule.home,
          arguments: _resetFormData(formData),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Voltar para página inicial',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildQrCode(HarvestForm formData, double? size) {
    var message = jsonEncode(formData);
    return QrImageView(
      data: message,
      version: QrVersions.auto,
      size: size ?? 200.0,
    );
  }

  void _returnToHomePage() {}
}
