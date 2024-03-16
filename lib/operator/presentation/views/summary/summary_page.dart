import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../domain/entities/harvest_params.dart';
import '../../../operator_module.dart';
import 'summary_state.dart';
import 'summary_viewmodel.dart';

class SummaryPage extends StatefulWidget {
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends ViewState<SummaryPage, SummaryViewModel> {
  String codigo = '';
  String destinoColheita = '';
  String observacoes = '';
  String descricao = '';
  String variedade = '';
  String quantidadeColetada = '';
  String unidade = '';
  String nomeMotorista = '';
  String cpfMotorista = '';
  String placaCaminhao = '';
  String nomeTransportadora = '';

  HarvestParams? harvestParams;

  @override
  void initState() {
    super.initState();
    viewModel.fetchData();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final harvestForm =
        ModalRoute.of(context)!.settings.arguments as HarvestForm;

    return Scaffold(
      appBar: AppBar(
        title: Text('Resumo'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ViewModelConsumer<SummaryViewModel, SummaryState>(
          viewModel: viewModel,
          listener: (context, state) => switch (state) {
            LoadedSummaryState(
              :final harvestParams,
            ) =>
              {},
            SummarySuccess() => {},
            _ => null,
          },
          builder: (context, state) {
            return switch (state) {
              LoadedSummaryState(
                :final harvestParams,
              ) =>
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Seção: Dados Sobre o Produto
                      _buildSectionTitle('Dados Sobre o Produto:'),
                      _buildInfoItem(
                          'Código:', harvestForm.product?.productCode ?? ''),
                      _buildInfoItem('Descrição:',
                          harvestForm.product?.productDescription ?? ""),
                      _buildInfoItem('Variedade:',
                          harvestForm.product?.productVariety ?? ''),
                      _buildInfoItem('Quantidade Coletada:',
                          harvestForm.product?.quantity ?? ''),
                      _buildInfoItem(
                          'Unidade:', harvestForm.product?.unit ?? ''),

                      SizedBox(height: 16.0),

                      // Seção: Dados Sobre o Motorista
                      _buildSectionTitle('Dados Sobre o Motorista:'),
                      _buildInfoItem('Nome do Motorista:',
                          harvestForm.driver?.driverName ?? ''),
                      _buildInfoItem('CPF do Motorista:',
                          harvestForm.driver?.driverCpf ?? ''),
                      _buildInfoItem('Placa do Caminhão:',
                          harvestForm.driver?.truckPlate ?? ''),
                      _buildInfoItem('Nome da Transportadora:',
                          harvestForm.driver?.shippingCompanyName ?? ''),

                      SizedBox(height: 16.0),

                      // Seção: Dados Sobre o Destino
                      _buildSectionTitle('Dados Sobre o Destino:'),
                      _buildInfoItem('Destino da Colheita:',
                          harvestForm.destination?.entityName ?? ''),
                      _buildInfoItem('Observação:',
                          harvestForm.destination?.details ?? ''),

                      SizedBox(height: 26.0),

                      _buildSubmitButton(harvestForm),
                    ],
                  ),
                ),
              SummaryLoading() => Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              SummaryError() => Scaffold(
                    body: Center(
                  /// TODO: tela de erro
                  child: Text('Erro'),
                )),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }

  Widget _buildSubmitButton(formData) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Nav.pushNamed(
            OperatorModule.qrCodeGenerator,
            arguments: formData,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          'Prosseguir',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
//   Widget _buildSubmitButton(formData) {
//     return ElevatedButton(
//       onPressed: () {
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => DriverDataPage(
//         //       codigo: selectedCodigo!,
//         //       descricao: descricao,
//         //       variedade: selectedVariedade!,
//         //       quantidadeColetada: quantidadeColetada,
//         //       unidade: selectedUnidade!,
//         //     ),
//         //   ),
//         // );

//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //       builder: (context) => ProductDataPage()),
//         // );
//         Nav.pushNamed(OperatorModule.qrCodeGenerator,
//             arguments: {'formData': formData});
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.green,
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
//       child: Text(
//         'Prosseguir',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 18.0,
//         ),
//       ),
//     );
//   }
// }

  Widget _buildSectionTitle(String title) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
