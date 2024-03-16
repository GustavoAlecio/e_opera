import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../main_module.dart';
import 'login_state.dart';
import 'login_viewmodel.dart';

/// page to user login
class LoginPage extends StatefulWidget {
  ///
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginViewModel viewModel;
  late final TextEditingController _userController;
  late final TextEditingController _passwordController;

  // ValueNotifier:
  // Serve para atualizar o estado de um widget em específico dentro de um
  // ValueListenableBuilder - Atualiza apenas o componente involucrado nisso
  final ValueNotifier<bool> _obscureNotifier = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    viewModel = DM.get<LoginViewModel>();
    if (viewModel.isInitialized) {
      viewModel.retrieveLoggedInUser();
    }
    _userController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  BasePath _getPath(String role) {
    switch (role) {
      case 'ROLE_OPERADOR':
        return MainModule.operatorModule;
      case 'ROLE_MOTORISTA':
        return MainModule.driverModule;
      default:
        return MainModule.driverModule;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelConsumer<LoginViewModel, LoginState>(
        viewModel: viewModel,
        listener: (context, state) => switch (state) {
          ErrorLogin() => {
              {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Falha ao realizar login")))
              },
            },
          // SuccessLogin() => Nav.pushNamed(MainModule.operatorModule),
          SuccessLogin(:final id, :final nome, :final perfil) =>
            Nav.pushReplacementNamed(_getPath(perfil!),
                arguments: {id: id, nome: nome, perfil: perfil}),
          _ => null,
        },
        builder: (context, state) {
          return switch (state) {
            InitialLogin() || ErrorLogin() => Container(
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
                child: SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimension.md.width),
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: const Dimension(24.75).height,
                          ),
                          child: Text(
                            'Olá',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.fontSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.sm.height),
                          child: Text(
                            'Acesse sua conta',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.fontSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: Dimension.md.height),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Usuário',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.fontSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Dimension.xs.height),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    controller: _userController,
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
                                      hintText: 'Digite o seu usuário',
                                      hintStyle: TextStyle(
                                        color: const Color(0xFF8391A1),
                                        fontSize: 16.fontSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: Dimension.md.height),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Senha',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.fontSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: Dimension.xs.height),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white,
                                  ),
                                  child: ValueListenableBuilder(
                                    valueListenable: _obscureNotifier,
                                    builder: (context, obscure, _) {
                                      return Row(
                                        children: [
                                          Flexible(
                                            child: TextFormField(
                                              controller: _passwordController,
                                              obscureText: obscure,
                                              style: TextStyle(
                                                color:
                                                    context.foreground.active,
                                                fontSize: 16.fontSize,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal:
                                                      Dimension.sm.width,
                                                  vertical: Dimension.sm.height,
                                                ),
                                                focusedBorder: InputBorder.none,
                                                hintText: 'Digite a sua senha',
                                                hintStyle: TextStyle(
                                                  color:
                                                      const Color(0xFF8391A1),
                                                  fontSize: 16.fontSize,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Dimension.sm.horizontal,
                                          IconButton(
                                            onPressed: () => _obscureNotifier
                                                .value = !obscure,
                                            icon: obscure
                                                ? Image.asset(
                                                    'assets/icons/password_obscure.png',
                                                  )
                                                : Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    size: 20.fontSize,
                                                    color: const Color(
                                                      0xff6A707C,
                                                    ),
                                                  ),
                                          ),
                                          Dimension.sm.horizontal,
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.xxl.height),
                          child: CustomFilledButton(
                            text: 'Entrar',
                            loading: state is LoadingLogin,
                            onPressed: () {
                              if (_userController.text.isEmpty ||
                                  _passwordController.text.isEmpty) {
                                // TODO: validar situação de input errado
                                return;
                              }
                              viewModel.login(
                                _userController.text,
                                _passwordController.text,
                              );
                            },
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            _ => const Center(child: CircularProgressIndicator())
          };
        },
      ),
    );
  }
}
