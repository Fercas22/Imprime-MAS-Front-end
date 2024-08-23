import 'package:imprime_mas/presentation/pages/auth/login/login_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginWidget();
  }
}
