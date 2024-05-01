import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentacion/widgets/custom_header.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: CustomHeader(title: 'Dashboard'),
      content: Center(
        child: Text('Contenido del punto de venta'),
      ),
    );
  }
}
