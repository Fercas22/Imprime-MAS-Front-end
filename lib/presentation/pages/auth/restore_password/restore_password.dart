import 'package:auto_route/auto_route.dart';
import 'package:imprime_mas/presentation/pages/auth/restore_password/widgets/visual_validator_widget.dart';
import 'package:imprime_mas/presentation/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_header_auth.dart';
import 'package:imprime_mas/presentation/widgets/custom_home_logo.dart';
import 'package:imprime_mas/domain/value_objects/validator.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:fluent_ui/fluent_ui.dart';

@RoutePage()
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
          const SizedBox(height: 10),
          const SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa una nueva contraseña',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'La contraseña debera de contener las siguientes especificaciones:',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          VisualValidatorWidget(
            text: 'Mínimo 8 caracteres',
            success: Validator.minLengthValidator('Fer22nando'),
            enable: false,
          ),
          VisualValidatorWidget(
            text: 'Un número',
            success: Validator.minNumberValidator('Fernando'),
            enable: true,
          ),
          VisualValidatorWidget(
            text: 'Una mayúscula',
            success: Validator.minCapitalLetterValidator('Fer22nando'),
            enable: true,
          ),
          VisualValidatorWidget(
            text: 'Una minúscula',
            success: Validator.minLowerCaseValidator('Fer22nando'),
            enable: false,
          ),
          const SizedBox(height: 10),
          const Text(
            'Confirma la contraseña',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Repite la contraseña para confirmar',
            ),
          ),
        ],
      ),
    );
  }
}
