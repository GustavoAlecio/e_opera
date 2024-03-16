// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
// import 'package:timeline_tile/timeline_tile.dart';

import '../../../../core/core.dart';
import '../../../../login/login.dart';
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
  var numberOfPendingCollects = 0;

  @override
  void initState() {
    super.initState();
    viewModel.getCredentials();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    viewModel
        .getPendingCollects()
        .then((value) => numberOfPendingCollects = value);
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
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
            DriverLoadedHome(
              :final syncronizing,
              :final syncError,
              :final numberOfPendingCollects
            ) =>
              {
                this.numberOfPendingCollects = numberOfPendingCollects,
                if (syncronizing && !syncError)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Banco de dados atualizado com sucesso'),
                      ),
                    ),
                  },
                if (syncError)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Falha ao sincronizar banco de dados. Verifique sua conexão e tente novamente.',
                        ),
                      ),
                    ),
                  },
              },
            DriverSuccessHome() => {},
            _ => null,
          },
          builder: (context, state) {
            return switch (state) {
              DriverInitialHome() => const Center(),
              DriverLoadedHome(
                :final loggedInUser,
              ) =>
                Scaffold(
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
                          GestureDetector(
                            onTap: () => viewModel
                                .synchronizeLocalDatabaseUsecase(loggedInUser!),
                            child: Badge(
                              label: Text(numberOfPendingCollects.toString()),
                              textColor: Colors.white,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.refresh_rounded,
                                size: 24.fontSize,
                              ),
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
                  body: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        // margin: EdgeInsets.only(top: const Dimension(0).height),
                        // margin: EdgeInsets.only(top: const Dimension(0).height),
                        constraints: BoxConstraints(
                          maxHeight: context.screenHeight -
                              const Dimension(7.5).height,
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
                                'Olá, ${loggedInUser?.nome}',
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
                              // _buildDeliverProgresses(),
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
                                    },
                                    child: Container(
                                      width: const Dimension(19.5).width,
                                      height: const Dimension(25).height,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                  ),
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
              DriverLoadedHome(:final loggedInUser) => Scaffold(
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
      ),
    );
  }

  Widget _buildDeliverProgresses() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/caminhao_entrega.png',
                    width: Dimension.md.width,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.sm.width),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#123456',
                        style: TextStyle(
                          color: const Color(0xFF121517),
                          fontSize: 16.fontSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'A caminho',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('-', style: TextStyle(color: Colors.grey)),
                          Text('28/01/2024',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget __buildDetailsDialog() {
    return const Dialog(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // TODO: Collect details
          ],
        ),
      ),
    );
  }

  // Widget _buildTimelineTile(bool isFirst, bool isLast, bool isPast) {
  //   return TimelineTile(
  //     isFirst: isFirst,
  //     isLast: isLast,
  //     indicatorStyle: IndicatorStyle(
  //       color: isPast ? Color(0xFF0D8536) : Colors.grey[500]!,
  //       iconStyle: IconStyle(iconData: Icons.check, color: Colors.white),
  //     ),
  //   );
  // }
}
