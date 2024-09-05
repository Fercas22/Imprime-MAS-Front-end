import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/views/widgets/custom_header.dart';

@RoutePage()
class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const CustomHeader(title: 'Clientes'),
      content: Container(
        padding: const EdgeInsets.all(16),
        child: _buildTable(),
      ),
    );
  }

  Widget _buildTable() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(3),
            3: FlexColumnWidth(3),
            4: FlexColumnWidth(3),
            5: FlexColumnWidth(3),
            6: FlexColumnWidth(3),
          },
          border: TableBorder.all(color: Colors.grey),
          children: [
            TableRow(
              children: [
                _buildTableCell('Producto'),
                _buildTableCell('SKU'),
                _buildTableCell('Precio unitario'),
                _buildTableCell('Descuento'),
                _buildTableCell('Stock'),
                _buildTableCell('Subtotal Neto'),
                _buildTableCell('Acciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Nombre del producto'),
                _buildTableCell('4323123SYS21'),
                _buildTableCell('\$ 45.00'),
                _buildTableCell('\$ 00.00'),
                _buildTableCell('43 pzs'),
                _buildTableCell('\$ 5542.00'),
                _buildTableCell('Opciones'),
              ],
            ),
            // Añade más filas según sea necesario
          ],
        ),
      ),
    );
  }

  Widget _buildTableCell(String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
      ),
    );
  }
}
