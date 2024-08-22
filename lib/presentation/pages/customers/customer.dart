import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentation/widgets/custom_header.dart';

@RoutePage()
class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: CustomHeader(title: 'Clientes'),
      content: Center(
        child: Text('Contenido de clientes'),
      ),
      // content: SizedBox(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Center(
      //     child: Table(
      //       border: TableBorder.all(),
      //       children: const [
      //         TableRow(
      //           children: [
      //             TableCell(child: Center(child: Text('Celda 1'))),
      //             TableCell(child: Center(child: Text('Celda 2'))),
      //             TableCell(child: Center(child: Text('Celda 3'))),
      //           ],
      //         ),
      //         TableRow(
      //           children: [
      //             TableCell(child: Center(child: Text('Celda 4'))),
      //             TableCell(child: Center(child: Text('Celda 5'))),
      //             TableCell(child: Center(child: Text('Celda 6'))),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
