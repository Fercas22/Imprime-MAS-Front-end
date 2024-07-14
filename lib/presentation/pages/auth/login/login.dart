import 'package:flutter/cupertino.dart';
import 'package:imprime_mas/presentation/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_header_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_home_logo.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomHomeLogo(),
        _rightContainer(),
      ],
    );
  }

  Expanded _rightContainer() {
    return Expanded(
      child: Container(
        color: AppColors.secondaryGray,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomHeaderAuth(
              title: 'Iniciar sesión',
              subtitle:
                  'Ingresa tus credenciales de acceso para poder iniciar sesión.',
            ),
            _form(),
            CustomFooterAuth(
              buttonTitle: 'Ingresar al sistema',
              onPressedButton: () {
                print('BOTON');
              },
              textButtonTitle: '¿No recuerdas tu contraseña?',
              onPressedTextButton: () {
                print('OLVIDAMOS CONTRASEÑA');
              },
            ),
            const Text('Versión 1.0'),
          ],
        ),
      ),
    );
  }

  SizedBox _form() {
    return const SizedBox(
      width: 467,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nombre de usuario',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa tu nombre de usuario',
            ),
          ),
          SizedBox(height: 40),
          Text(
            'Contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa tu contraseña',
            ),
          ),
        ],
      ),
    );
  }
}
