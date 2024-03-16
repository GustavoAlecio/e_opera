// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/core.dart';
import '../../../../login/domain/entities/login.dart';
import '../../../../login/login.dart';
import '../../../domain/entities/form_data/harvest_form.dart';
import '../../../domain/entities/localization_params.dart';
import '../../../operator_module.dart';
import 'home_state.dart';
import 'home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _OperatorHomePageState();
}

class _OperatorHomePageState extends ViewState<HomePage, HomeViewModel> {
  var uuid = Uuid();
  Login? loggedUser = null;

  @override
  void initState() {
    super.initState();
    viewModel.getInitialData();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  void _showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);

    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _returnToIntroPage() {
    Nav.popAndPushNamed(OperatorModule.intro);
  }

  String _getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(now);
  }

  HarvestForm _assignUuidAndCurrentDateToForm(HarvestForm harvestForm) {
    return harvestForm.copyWith(date: _getCurrentDate(), id: uuid.v1());
  }

  @override
  Widget build(BuildContext context) {
    var routeArgs = ModalRoute.of(context)?.settings.arguments as HarvestForm;
    routeArgs = _assignUuidAndCurrentDateToForm(routeArgs);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.21, -0.98),
          end: Alignment(0.21, 0.98),
          colors: [Color(0xFF93ECB0), Color(0xFF074624)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.xs.width),
            child: Row(
              children: [
                Text(
                  'Operador',
                  style: TextStyle(
                    color: const Color(0xFF121517),
                    fontSize: 20.fontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: viewModel.updateLocalDatabase,
                  child: Icon(
                    Icons.refresh_rounded,
                    size: 24.fontSize,
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(20, 1),
                ),
                GestureDetector(
                  onTap: () async => {
                    await viewModel.logout(),
                    Nav.navigate(LoginModule.root)
                  },
                  child: Icon(
                    Icons.logout,
                    size: 20.fontSize,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ViewModelConsumer<HomeViewModel, HomeState>(
          viewModel: viewModel,
          listener: (context, state) => switch (state) {
            LoadedHome(
              :final loggedInUser,
              :final syncError,
              :final syncronizing
            ) =>
              {
                loggedUser = loggedInUser,
                if (syncronizing && !syncError)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Banco de dados atualizado com sucesso")))
                  },
                if (syncError)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            "Falha ao sincronizar banco de dados. Verifique sua conexão e tente novamente.")))
                  }
              },
            ErrorHome(:final message) => {_showToast(context, message)},
            SuccessHome() => {},
            _ => null,
          },
          builder: (context, state) {
            return switch (state) {
              LoadedHome(:final loggedInUser) => Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimension.xs.height,
                        horizontal: Dimension.md.width,
                      ),
                      child: SizedBox(
                        height: Dimension.xxl.height,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF0D8536),
                                shape: OvalBorder(),
                              ),
                              child: Image.asset('assets/icons/map_place.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: const Dimension(1.375).width),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sua Localização',
                                    style: TextStyle(
                                      color: const Color(0xFF121517),
                                      fontSize: 12.fontSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '${routeArgs?.location?.farm.farmName}, ${routeArgs?.location?.field.fieldDescription}',
                                    style: TextStyle(
                                      color: const Color(0xFF121517),
                                      fontSize: 14.fontSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => Nav.pushNamed(
                                OperatorModule.intro,
                                arguments: routeArgs,
                              ),
                              visualDensity: VisualDensity.compact,
                              icon: Icon(
                                Icons.chevron_right_outlined,
                                size: 24.fontSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: const Dimension(9).height),
                      constraints: BoxConstraints(
                        maxHeight:
                            context.screenHeight - const Dimension(7.5).height,
                      ),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF074624),
                            blurRadius: 4,
                            offset: Offset(4, 0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.md.width),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Dimension.xl.vertical,
                            Text(
                              'Olá, ${loggedInUser?.nome ?? loggedUser?.nome}',
                              style: TextStyle(
                                color: const Color(0xFF121517),
                                fontSize: 30.fontSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Dimension(2.25).vertical,
                            Text(
                              'O que você gostaria de fazer hoje?',
                              style: TextStyle(
                                color: const Color(0xFF121517),
                                fontSize: 16.fontSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Dimension.xl.vertical,
                            GridView(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.785,
                                crossAxisSpacing: Dimension.sm.width,
                              ),
                              children: [
                                Container(
                                  width: const Dimension(19.5).width,
                                  height: const Dimension(25).height,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0xFF0D8536),
                                        blurRadius: 4,
                                        offset: Offset(3, 4),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Nav.pushNamed(OperatorModule.productForm,
                                          arguments: routeArgs);
                                    },
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/icons/realizar_colheira.png',
                                        ),
                                        Text(
                                          'Realizar colheita',
                                          style: TextStyle(
                                            color: const Color(0xFF121517),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        // ajuste conforme necessário
                                      ],
                                    ),
                                  ),
                                ),
                                // Container(
                                //   width: const Dimension(19.5).width,
                                //   height: const Dimension(25).height,
                                //   decoration: ShapeDecoration(
                                //     color: Colors.white,
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(8),
                                //     ),
                                //     shadows: const [
                                //       BoxShadow(
                                //         color: Color(0xFF0D8536),
                                //         blurRadius: 4,
                                //         offset: Offset(3, 4),
                                //       ),
                                //     ],
                                //   ),
                                //   child: Column(
                                //     children: [
                                //       Image.asset(
                                //           'assets/icons/relatorios.png'),
                                //       Text(
                                //         'Relatórios',
                                //         style: TextStyle(
                                //           color: const Color(0xFF121517),
                                //           fontSize: 16.fontSize,
                                //           fontFamily: 'Poppins',
                                //           fontWeight: FontWeight.w500,
                                //         ),
                                //       ),
                                //       Dimension.xs.vertical,
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              LoadingHome() => Scaffold(
                  body: Center(
                      child: Center(
                          child: Stack(
                    children: [
                      Padding(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                        padding: EdgeInsets.only(bottom: Dimension(10).value),
                      ),
                      Center(
                        child: Text("Atualizando banco de dados local"),
                      )
                    ],
                  ))),
                ),
              // ErrorHome() => Scaffold(
              //       body: Center(
              //     /// TODO: tela de erro
              //     child: Text('Erro'),
              //   )),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }
}
