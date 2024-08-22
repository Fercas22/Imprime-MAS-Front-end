import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:imprime_mas/presentation/widgets/custom_header.dart';

@RoutePage()
class Suppliers extends StatefulWidget {
  const Suppliers({super.key});

  @override
  State<Suppliers> createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xFF242424),
      child: const ScaffoldPage(
        header: CustomHeader(title: 'Proveedores'),
        content: Center(
        child: Text('Contenido de proveedores'),
      ),
        // content: SizedBox(
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: Center(
        //     child: DataTable(
        //       columns: const [
        //         DataColumn(label: Text('Columna 1')),
        //         DataColumn(label: Text('Columna 2')),
        //         DataColumn(label: Text('Columna 3')),
        //       ],
        //       rows: const [
        //         DataRow(cells: [
        //           DataCell(
        //             Text('Dato 1'),
        //             // onTap: () {
        //             //   print('object');
        //             // },
        //           ),
        //           DataCell(Text('Dato 2')),
        //           DataCell(Text('Dato 3')),
        //         ]),
        //         DataRow(
        //           cells: [
        //             DataCell(Text('Dato 4')),
        //             DataCell(Text('Dato 5')),
        //             DataCell(Text('Dato 6')),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
