import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import '../../../../../../core/core.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../domain/entities/form_data/product_form.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../domain/entities/product.dart';
import '../../../operator_module.dart';
import 'product_data_state.dart';
import 'product_data_viewmodel.dart';

class ProductDataPage extends StatefulWidget {
  @override
  _ProductDataPageState createState() => _ProductDataPageState();
}

class _ProductDataPageState
    extends ViewState<ProductDataPage, ProductDataViewModel> {
  // Dados fictícios para as listas suspensas
  List<String> codigoList = ['A', 'B', 'C'];
  List<String> codeOptions = new List<String>.empty();
  List<String> variedadeList = ['Tipo1', 'Tipo2', 'Tipo3'];
  List<String> varietyOptions = new List<String>.empty();
  List<String> unidadeList = ['Kg', 'Litro', 'Unidade'];
  List<String> unitOptions = new List<String>.empty();

  // Variáveis para armazenar os valores dos campos
  String? selectedCodigo = 'A';
  String descricao = '';
  String? selectedVariedade = 'Tipo1';
  String quantidadeColetada = '';
  String? selectedUnidade = 'Kg';

  @override
  void initState() {
    super.initState();
    viewModel.getProductOptions();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s) != null;
  }

  @override
  Widget build(BuildContext context) {
    var form = ModalRoute.of(context)?.settings.arguments as HarvestForm;
    return Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Dados do Produto'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: ViewModelConsumer<ProductDataViewModel, ProductDataState>(
            viewModel: viewModel,
            listener: (context, state) => switch (state) {
              LoadedProductDataState(:final products, :final varieties) => {
                  codeOptions =
                      List<String>.from(products.map((e) => e.productCode)),
                  varietyOptions = List<String>.from(
                      varieties.map((e) => e.varietyDescription))
                },
              SuccessProductData() => {},
              _ => null,
            },
            builder: (context, state) {
              return switch (state) {
                LoadedProductDataState(
                  :final products,
                  :final varieties,
                  :final selectedProduct,
                  :final selectedVariety,
                ) =>
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildDropdown(
                              labelText: 'Código',
                              value: selectedProduct?.productCode,
                              items: codeOptions,
                              onChanged: (String? value) {
                                viewModel.onSelectProduct(value!);
                              },
                            ),
                            SizedBox(height: 16.0),
                            _buildTextFormField(
                              labelText: 'Descrição',
                              onChanged: (value) {
                                setState(() {
                                  descricao = value;
                                });
                              },
                            ),
                            SizedBox(height: 16.0),
                            _buildDropdown(
                              labelText: 'Variedade',
                              value: selectedVariety?.varietyDescription,
                              items: varietyOptions,
                              onChanged: (String? value) {
                                viewModel.onSelectVariety(value!);
                              },
                            ),
                            SizedBox(height: 16.0),
                            _buildTextFormField(
                              labelText: 'Quantidade Coletada',
                              validator: ValidationBuilder()
                                  .required('Um valor precisa ser escolhido')
                                  .minLength(1)
                                  .add((value) => value != null
                                      ? value.canBeDouble
                                          ? int.parse(value) > 0
                                              ? null
                                              : 'O valor precisa ser maior que zero'
                                          : 'Número inválido'
                                      : 'Digite um valor'),
                              onChanged: (value) {
                                setState(() {
                                  quantidadeColetada = value;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(height: 16.0),
                            _buildDropdown(
                              labelText: 'Unidade',
                              value: selectedUnidade,
                              items: unidadeList,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedUnidade = value;
                                });
                              },
                            ),
                            SizedBox(height: 32.0),
                            _buildSubmitButton(_formKey, form),
                          ],
                        ),
                      ),
                    ),
                  ),
                LoadingProductData() => Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ErrorProductData() => Scaffold(
                      body: Center(
                    /// TODO: tela de erro
                    child: Column(
                      children: [
                        Text(
                            'Sem conexão com a internet. Primeira sincronia ainda não realizada.'),
                        ElevatedButton(
                            onPressed: () => {
                                  viewModel.getProductOptions(),
                                },
                            child: Text('Tentar novamente'))
                      ],
                    ),
                  )),
                _ => const SizedBox.shrink()
              };
            },
          ),
        ));
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
              .required()
              .minLength(1, 'Um produto precisa ser escolhido')
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
                    fontWeight: FontWeight.bold),
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
    required String labelText,
    required void Function(String) onChanged,
    ValidationBuilder? validator,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      validator: validator?.build(),
      onChanged: onChanged,
      keyboardType: keyboardType,
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
        ),
      ),
    );
  }

  Widget _buildSubmitButton(GlobalKey<FormState> _formKey, HarvestForm form) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState != null) {
          if (_formKey.currentState!.validate()) {
            form = form.copyWith(
              product: ProductForm(
                productCode: selectedCodigo!,
                productDescription: descricao,
                productVariety: selectedVariedade!,
                quantity: quantidadeColetada,
                unit: selectedUnidade!,
              ),
            );

            Nav.pushNamed(
              OperatorModule.driverForm,
              arguments: form,
            );
          }
        }

        // Navigator.pushNamed(context, './driver', arguments: {
        //   'codigo': selectedCodigo!,
        //   'descricao': descricao,
        //   'variedade': selectedVariedade!,
        //   'quantidadeColetada': quantidadeColetada,
        //   'unidade': selectedUnidade!
        // });
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
    );
  }
}
