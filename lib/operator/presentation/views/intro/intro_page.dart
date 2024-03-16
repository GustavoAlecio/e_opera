import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/farm.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../operator.dart';
import '../../../operator_module.dart';

/// Page to operator insert some informations
class OperatorIntroPage extends StatefulWidget {
  /// Constructor of [OperatorIntroPage]
  const OperatorIntroPage({super.key});

  @override
  State<OperatorIntroPage> createState() => _OperatorIntroPageState();
}

class _OperatorIntroPageState
    extends ViewState<OperatorIntroPage, IntroViewModel> {
  List<Farm> _farmOptions = List<Farm>.empty();
  @override
  void initState() {
    super.initState();
    viewModel.getFarms();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // viewModel.loadSavedLocation().then((loaded) => {
    //       if (loaded) {viewModel.navigateToHomePage()}
    //     });
    return Scaffold(
        body: ViewModelConsumer<IntroViewModel, IntroState>(
      viewModel: viewModel,

      // Eventos que não precisam rebuildar a tela
      // Eg. Success que vai para a próxima tela
      listener: (context, state) => switch (state) {
        SuccessIntro() => {},
        _ => null,
      },
      // Quando modificações para buildar a tela
      // Eg. para atualizar um estado de autocomplete
      builder: (context, state) {
        return switch (state) {
          LoadedIntro(
            :final farms,
            :final selectedFarm,
            :final fields,
            :final selectedField,
            :final harvests,
            :final selectedHarvest
          ) =>
            Container(
              width: context.screenWidth,
              height: context.screenHeight,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.21, -0.98),
                  end: Alignment(0.21, 0.98),
                  colors: [Color(0xFF93ECB0), Color(0xFF074624)],
                ),
              ),
              child: SingleChildScrollView(
                  child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimension.md.width,
                          top: const Dimension(6.43).height,
                        ),
                        child: Text(
                          'Operador',
                          style: TextStyle(
                            color: const Color(0xFF121517),
                            fontSize: 20.fontSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/map.png',
                          height: const Dimension(20).height,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight:
                          context.screenHeight - const Dimension(31).height,
                      maxWidth: context.screenWidth,
                    ),
                    margin: EdgeInsets.only(top: const Dimension(31).height),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimension.md.width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: Dimension.xl.height),
                            child: Text(
                              'Qual a sua localização atual?',
                              style: TextStyle(
                                color: const Color(0xFF121517),
                                fontSize: 18.fontSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimension.md.height),
                            child: _CustomAutoComplete(
                              title: 'Fazenda',
                              hintText: 'Qual fazenda você se encontra?',
                              listOfContents:
                                  farms.map((e) => e.farmName).toList(),
                              onSelected: viewModel.onSelectFarm,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimension.md.height),
                            child: _CustomAutoComplete(
                              title: 'Safra',
                              hintText: 'Qual safra você se encontra?',
                              listOfContents:
                                  harvests.map((e) => e.description).toList(),
                              onSelected: viewModel.onSelectHarvest,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimension.md.height),
                            child: _CustomAutoComplete(
                              title: 'Talhão',
                              hintText: 'Qual talhão você se encontra?',
                              listOfContents: fields
                                  .map((e) => e.fieldDescription)
                                  .toList(),
                              onSelected: viewModel.onSelectField,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Dimension.xxl.height),
                            child: CustomFilledButton(
                              onPressed: () => viewModel.navigateToHomePage(),
                              text: 'Continuar',
                              disabled: [
                                selectedFarm,
                                selectedField,
                                selectedHarvest
                              ].any((element) =>
                                      element == null || element == '')
                                  ? true
                                  : false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ),
          LoadingIntro() => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ErrorIntro() => Scaffold(
                body: Center(
              /// TODO: tela de erro
              child: Text('Erro'),
            )),
          _ => const SizedBox.shrink()
        };
      },
    ));
  }
}

class _CustomItemSearch extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final _formKey = GlobalKey<FormState>();

  _CustomItemSearch(
      {required this.title,
      required this.hintText,
      required this.textEditingController,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF121517),
              fontSize: 18.fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(top: Dimension.xs.height),
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFFF0F3F4),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        style: TextStyle(
                          color: context.foreground.active,
                          fontSize: 16.fontSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: Dimension.sm.width,
                            vertical: Dimension.sm.height,
                          ),
                          focusedBorder: InputBorder.none,
                          hintText: hintText,
                          hintStyle: TextStyle(
                            color: const Color(0xFF8391A1),
                            fontSize: 16.fontSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: Dimension.xs.width,
                        right: Dimension.sm.width,
                      ),
                      child: Image.asset(
                        'assets/icons/search.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAutoComplete extends StatelessWidget {
  final String title;
  final String hintText;
  final List<String> listOfContents;
  final Function(String) onSelected;
  final _focusNode = FocusNode();

  _CustomAutoComplete({
    super.key,
    required this.title,
    required this.hintText,
    required this.listOfContents,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _focusNode.unfocus(),
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }

          return listOfContents.where((option) => option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase()));
        },
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return _CustomItemSearch(
            textEditingController: textEditingController,
            title: title,
            hintText: hintText,
            focusNode: focusNode,
          );
        },
        onSelected: onSelected,
        optionsViewBuilder: (context, onSelected, options) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              color: Colors.white,
              shadowColor: Colors.grey,
              elevation: 4,
              child: SizedBox(
                width: Dimension(41).width,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final option = options.elementAt(index);

                    return ListTile(
                      title: Text(
                        option.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Dimension(2).value),
                      ),
                      onTap: () => onSelected(option),
                    );
                  },
                  itemCount: options.length,
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
