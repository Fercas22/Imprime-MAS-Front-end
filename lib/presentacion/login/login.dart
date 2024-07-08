import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/theme/app_colors.dart';

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
        Expanded(
          child: Container(
            color: AppColors.negroFuerte, // Cambia a tu color deseado
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.tertiary, // Cambia a tu color deseado
          ),
        ),
      ],
    );
  }
}
