import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentation/widgets/custom_home_logo.dart';

@RoutePage()
class LoginRoutes extends StatelessWidget {
  const LoginRoutes({super.key});

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
    return const Expanded(
      child: SizedBox(
        height: double.infinity,
        child: AutoRouter(),
      ),
    );
  }
}
