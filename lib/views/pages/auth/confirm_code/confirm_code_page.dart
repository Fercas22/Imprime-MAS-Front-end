import 'package:imprime_mas/views/pages/auth/confirm_code/confirm_code_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

@RoutePage()
class ConfirmCodePage extends StatelessWidget {
  const ConfirmCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConfirmCodeWidget();
  }
}
