import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:form_validator/form_validator.dart';

import '../../../../../../core/core.dart';
import '../../../domain/entities/form_data/driver_form.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../operator_module.dart';
import '../product_form/product_data_state.dart';
import 'driver_data_state.dart';
import 'driver_data_viewmodel.dart';

class DriverDataPage extends StatefulWidget {
  // DriverForm({
  //   required this.codigo,
  //   required this.descricao,
  //   required this.variedade,
  //   required this.quantidadeColetada,
  //   required this.unidade,
  // });

  @override
  _DriverFormState createState() => _DriverFormState();
}

class _DriverFormState extends ViewState<DriverDataPage, DriverDataViewModel> {
  String codigo = '';
  String descricao = '';
  String variedade = '';
  String quantidadeColetada = '';
  String unidade = '';

  // Controladores de texto para os campos do formulário
  final TextEditingController _nomeMotoristaController =
      TextEditingController();

  final TextEditingController _cpfController =
      MaskedTextController(mask: '000.000.000-00');

  String _selectedPlacaCaminhao = 'ABC1234';
  String _selectedTransportadora = 'Transportadora Teste';

  // Dados fictícios para as listas suspensas
  List<String> placaCaminhaoList = ['ABC1234'];

  List<String> transportadoraList = ['Transportadora Teste'];

  @override
  void initState() {
    super.initState();
    viewModel.getDataOptions();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as HarvestForm;

    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Data Form'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ViewModelConsumer<DriverDataViewModel, DriverDataState>(
          viewModel: viewModel,
          listener: (context, state) => switch (state) {
            LoadedDriverDataState(
              :final shippingCompanies,
              :final vehicles,
            ) =>
              {
                placaCaminhaoList = List<String>.from(
                  vehicles.map((e) => e.vehiclePlate),
                ),
                transportadoraList = List<String>.from(
                  shippingCompanies.map((e) => e.shippingCompanyName),
                )
              },
            SuccessProductData() => {},
            _ => null,
          },
          builder: (context, state) {
            return switch (state) {
              LoadedDriverDataState(
                :final shippingCompanies,
                :final vehicles,
                :final selectedShippingCompany,
                :final selectedVehicle
              ) =>
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTextFormField(
                          validator:
                              ValidationBuilder().required('Digite um valor'),
                          controller: _nomeMotoristaController,
                          labelText: 'Nome do Motorista',
                        ),
                        SizedBox(height: 16.0),
                        _buildTextFormField(
                          validator:
                              ValidationBuilder().required('Digite um valor'),
                          controller: _cpfController,
                          labelText: 'CPF',
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 16.0),
                        _buildDropdown(
                          value: selectedVehicle?.vehiclePlate,
                          items: vehicles
                              .map((e) => e.vehiclePlate.value)
                              .toList(),
                          onChanged: (value) {
                            viewModel.onSelectVehicle(value!);
                          },
                          labelText: 'Placa do Caminhão',
                        ),
                        SizedBox(height: 16.0),
                        _buildDropdown(
                          value: selectedShippingCompany?.shippingCompanyName,
                          items: shippingCompanies
                              .map((e) => e.shippingCompanyName)
                              .toList(),
                          onChanged: (value) {
                            viewModel.onSelectShippingCompany(value!);
                          },
                          labelText: 'Transportadora',
                        ),
                        SizedBox(height: 16.0),
                        _buildSubmitButton(
                          _formKey,
                          routeArgs,
                          selectedVehicle?.vehiclePlate ?? '',
                          selectedShippingCompany?.shippingCompanyName ?? '',
                        ),
                      ],
                    ),
                  ),
                ),
              LoadingProductData() => Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ErrorDriverData() => Center(
                  child: Column(
                    children: [
                      Text(
                          'Sem conexão com a internet. Primeira sincronia ainda não realizada'),
                      ElevatedButton(
                          onPressed: () => {
                                viewModel.getDataOptions(),
                              },
                          child: Text('Tentar novamente'))
                    ],
                  ),
                ),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String labelText,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(height: 8.0),
        DropdownButtonFormField2<String?>(
          validator: ValidationBuilder()
              .required('Um valor precisa ser informado')
              .minLength(1, 'Um valor precisa ser informado')
              .build(),
          value: value,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white70,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 244, 0, 0)),
                borderRadius: BorderRadius.circular(10.0),
              )),
          onSaved: (value) {
            // Faça algo com o valor selecionado
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white70,
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          ),
        ),
      ],
    );
  }

  Widget _buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    required ValidationBuilder validator,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      validator: validator.build(),
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.green),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 244, 0, 0)),
            borderRadius: BorderRadius.circular(10.0),
          )),
      keyboardType: keyboardType,
    );
  }

  Widget _buildSubmitButton(
    GlobalKey<FormState> _formKey,
    HarvestForm harvestForm,
    String selectedPlacaCaminhao,
    String selectedTransportadora,
  ) {
    return SizedBox(
      width: double.infinity, // Ocupa a largura total da tela
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState != null) {
            if (!_formKey.currentState!.validate()) {
              return null;
            }
          }

          harvestForm = harvestForm.copyWith(
            driver: DriverForm(
              driverName: _nomeMotoristaController.text,
              driverCpf: _cpfController.text,
              truckPlate: selectedPlacaCaminhao,
              shippingCompanyName: selectedTransportadora,
            ),
          );

          Nav.pushNamed(
            OperatorModule.destinationForm,
            arguments: harvestForm,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20.0),
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
}
