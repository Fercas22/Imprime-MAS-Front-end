import 'package:imprime_mas/presentation/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_header_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_home_logo.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomHomeLogo(),
        _rightContainer(context),
      ],
    );
  }

  Expanded _rightContainer(BuildContext context) {
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
                    title: 'Iniciar sesión',
                    subtitle:
                        'Ingresa tus credenciales de acceso para poder iniciar sesión.',
                  ),
                  _form(),
                  CustomFooterAuth(
                    buttonTitle: 'Ingresar al sistema',
                    onPressedButton: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/saleProducts');
                    },
                    textButtonTitle: '¿No recuerdas tu contraseña?',
                    onPressedTextButton: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/confirmCode');
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
          SizedBox(height: 10),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa tu nombre de usuario',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
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
