import 'package:imprime_mas/views/widgets/custom_footer_auth.dart';
import 'package:imprime_mas/views/widgets/custom_header_auth.dart';
import 'package:imprime_mas/router/app_router.gr.dart';
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ConfirmCodeWidget extends StatelessWidget {
  const ConfirmCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
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
                    buttonTitle: 'Comprobar código de seguridad',
                    onPressedButton: () {
                      AutoRouter.of(context)
                          .replaceAll([const RestorePasswordRoute()]);
                    },
                    textButtonTitle: 'No me ha llegado el código',
                    onPressedTextButton: () {
                      print('REENVIAR CÓODIGO');
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
            'Código de verificación',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 45,
            child: TextBox(
              placeholder: 'Ingresa el código de verificación',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Se ha enviado el código de verificación al correo ****n32.gmail.com. No lo compartas con nadie.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'El Código de verificación es de un solo uso y tiene 5 minutos hasta que este expire.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
