import 'package:imprime_mas/presentation/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_header_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_home_logo.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:fluent_ui/fluent_ui.dart';

class RestorePassword extends StatelessWidget {
  const RestorePassword({super.key});

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
                    title: 'Recupera tu contraseña',
                  ),
                  _form(),
                  CustomFooterAuth(
                    buttonTitle: 'Confirmar cambio de contraseña',
                    onPressedButton: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    textButtonTitle: 'Cancelar cambio de contraseña',
                    onPressedTextButton: () {
                      Navigator.of(context).pushReplacementNamed('/');
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
    return SizedBox(
      width: 467,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nueva contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 12),
          const SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa una nueva contraseña',
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Confirma la contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 12),
          const SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Repite la contraseña para confirmar',
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Es importante que la contraseña tenga un mínimo de 8 caracteres y un máximo de 16.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'La contraseña deberá tener al menos una letra mayúscula y un número. No se admiten caracteres especiales como: \$#/\\|@%&()![]{}<>?¿',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Si planeas usar algún carácter usa coma o punto.',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
