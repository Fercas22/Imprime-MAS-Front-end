import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentation/widgets/custom_header.dart';

class SaleProducts extends StatefulWidget {
  const SaleProducts({super.key});

  @override
  State<SaleProducts> createState() => _SaleProductsState();
}

class _SaleProductsState extends State<SaleProducts> {
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
