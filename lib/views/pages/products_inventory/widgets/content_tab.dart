import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/views/widgets/custom_filter_type.dart';

class ContentTab extends StatefulWidget {
  const ContentTab({super.key});

  @override
  State<ContentTab> createState() => _ContentTabState();
}

class _ContentTabState extends State<ContentTab> {
  String? selectedValue;
  final List<String> items = [
    'Tintas',
    'Toner',
    'Block de hojas',
    'Lapiceros',
    'Impresiones'
  ];
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF808080),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          _widgetFirst(),
          _checked == true
              ? _advancedFilterWidget()
              : const SizedBox(height: 15),
          _buildTable(),
          const SizedBox(height: 27),
          _exportButton(),
        ],
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

  Row _widgetFirst() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _productFinder(),
        const SizedBox(width: 29),
        _advancedFilterCheck(),
        _addProductButton()
      ],
    );
  }

  Column _productFinder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Filtrar por productos o SKU'),
        const SizedBox(height: 10),
        SizedBox(
          width: 400,
          height: 35,
          child: EditableComboBox<String>(
            placeholder: const Text('Select or type an item'),
            value: selectedValue ?? '',
            items: items
                .map((item) =>
                    ComboBoxItem<String>(value: item, child: Text(item)))
                .toList(),
            onChanged: (value) {
              /// Retorna el valor que seleccionamos del ComboBox
              if (value != null) {
                setState(() {
                  selectedValue = value;
                });
              }
            },
            onFieldSubmitted: (String text) {
              /// Retorna lo que dijito el usuario cuando da click en otro lado
              setState(() => selectedValue = text);
              return selectedValue ?? '';
            },
            onTextChanged: (value) {
              /// Retorna el valor de lo que va escribiendo el usuario en tiempo real
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
        // const SizedBox(height: 6),
        // Text('Valor de muestra: $selectedValue'),
      ],
    );
  }

  Expanded _advancedFilterCheck() {
    return Expanded(
      child: SizedBox(
        height: 35,
        child: Checkbox(
          content: const Text('Mostrar filtro avanzado'),
          checked: _checked,
          onChanged: (value) {
            setState(() {
              _checked = value!;
            });
          },
        ),
      ),
    );
  }

  Widget _addProductButton() {
    return SizedBox(
      height: 35,
      child: Button(
        child: const Text('Nuevo producto'),
        onPressed: () {},
      ),
    );
  }

  Widget _advancedFilterWidget() {
    log('message');
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFilterType(
            title: 'Filtrar por precios',
            placeHolderOne: 'Precio mínimo',
            onChangedOne: (value) {
              log('Precio mínimo $value');
            },
            placeHolderTwo: 'Precio máximo',
            onChangedTwo: (value) {
              log('Precio máximo $value');
            },
          ),
          const SizedBox(width: 25),
          CustomFilterType(
            title: 'Filtrar por precios de proveedor',
            placeHolderOne: 'Precio mínimo',
            onChangedOne: (value) {
              log('Precio mínimo $value');
            },
            placeHolderTwo: 'Precio máximo',
            onChangedTwo: (value) {
              log('Precio máximo $value');
            },
          ),
          const SizedBox(width: 25),
          CustomFilterType(
            title: 'Filtrar por stock',
            placeHolderOne: 'Stock mínimo',
            onChangedOne: (value) {
              log('Stock mínimo $value');
            },
            placeHolderTwo: 'Stock máximo',
            onChangedTwo: (value) {
              log('Stock máximo $value');
            },
          ),
        ],
      ),
    );
  }

  Container _exportButton() {
    return Container(
      alignment: Alignment.bottomRight,
      child: Button(
        child: const Text('Exportar en Excel'),
        onPressed: () {
          log('Exportar tabla');
        },
      ),
    );
  }
}
