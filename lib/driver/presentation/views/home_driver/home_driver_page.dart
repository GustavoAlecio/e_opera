// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../driver_module.dart';
import 'home_driver_state.dart';
import 'home_driver_viewmodel.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _DriverHomePageState();
}

class _DriverHomePageState
    extends ViewState<DriverHomePage, DriverHomeViewModel> {
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
      child: ViewModelConsumer<DriverHomeViewModel, DriverHomeState>(
        viewModel: viewModel,
        // Eventos que não precisam rebuildar a tela
        // Eg. Success que vai para a próxima tela
        listener: (context, state) => switch (state) {
          DriverSuccessHome() => {},
          _ => null,
        },
        builder: (context, state) {
          return switch (state) {
            DriverInitialHome() => Scaffold(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimension.xs.width),
                    child: Row(
                      children: [
                        Text(
                          'Motorista',
                          style: TextStyle(
                            color: const Color(0xFF121517),
                            fontSize: 20.fontSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.refresh_rounded,
                          size: 24.fontSize,
                        ),
                      ],
                    ),
                  ),
                ),
                body: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      // margin: EdgeInsets.only(top: const Dimension(0).height),
                      // margin: EdgeInsets.only(top: const Dimension(0).height),
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
                              'Olá, José',
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
                                GestureDetector(
                                  onTap: () {
                                    Nav.pushNamed(DriverModule.qrCodeScanner);
                                    // Nav.pushNamed(DriverModule.qrCodeSummary);
                                  },
                                  child: Container(
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
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            'assets/icons/realizar_colheira.png'),
                                        Text(
                                          'Realizar coleta',
                                          style: TextStyle(
                                            color: const Color(0xFF121517),
                                            fontSize: 16.fontSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Dimension.xs.vertical,
                                      ],
                                    ),
                                  ),
                                )

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
                                //       Image.asset('assets/icons/relatorios.png'),
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
              ),
            DriverLoadingHome() => Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            DriverErrorHome() => Scaffold(
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
}
