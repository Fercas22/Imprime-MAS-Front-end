import 'package:flutter/material.dart' as mat;
import 'package:flutter/widgets.dart';
import 'package:imprime_mas/viewmodels/login_view_model.dart';
import 'package:imprime_mas/views/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/views/widgets/custom_header_auth.dart';
import 'package:imprime_mas/router/app_router.gr.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _rightContainer(context),
      ],
    );
  }

  Expanded _rightContainer(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return Expanded(
      child: Container(
        color: AppColors.secondaryGray,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomHeaderAuth(
                    title: 'Iniciar sesisdsón',
                    subtitle:
                        'Ingresa tus credenciales de acceso para poder iniciar sesión.',
                  ),
                  _form(viewModel),
                  // viewModel.isLoading
                  //     ? const mat.CircularProgressIndicator()
                  //     : mat.ElevatedButton(
                  //         onPressed: () {
                  //           viewModel.login();
                  //         },
                  //         child: const Text('Iniciar sesion'),
                  //       ),
                  // if (viewModel.errorMessage != null) ...[
                  //   const SizedBox(height: 16),
                  //   Text(
                  //     viewModel.errorMessage!,
                  //     style: TextStyle(color: Colors.red),
                  //   ),
                  // ],
                  // if (viewModel.user != null) ...[
                  //   const SizedBox(height: 16),
                  //   Text('Login exitoso: ${viewModel.user!.token}'),
                  //   // Text('data')
                  // ],
                  CustomFooterAuth(
                    buttonTitle: 'Ingresar al sistema',
                    onPressedButton: () {
                      AutoRouter.of(context).push(Navigation(
                          // isDarkMode: isDarkMode,
                          // toggleTheme: toggleTheme,
                          ));
                    },
                    textButtonTitle: '¿No recuerdas tu contraseña?',
                    onPressedTextButton: () {
                      AutoRouter.of(context).replaceAll(
                        [const ConfirmCodeRoute()],
                      );
                    },
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 26,
              left: 41,
              child: Text('Versión 1.0.0'),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _form(LoginViewModel viewModel) {
    return SizedBox(
      width: 467,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nombre de usuario prueba',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa tu nombre de usuario',
              onChanged: viewModel.setEmail,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa tu contraseña',
              onChanged: viewModel.setPassword,
            ),
          ),
        ],
      ),
    );
  }
}
