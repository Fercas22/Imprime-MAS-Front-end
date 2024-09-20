import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/views/widgets/custom_filter_type.dart';
import 'package:flutter/material.dart' as mat;

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
  final List<Map<String, dynamic>> data = [
    {
      "Producto": "Producto 1",
      "Grupo": "Grupo A",
      "SKU": "SKU12345",
      "Precio unitario": 100.0,
      "Descuento": 10.0,
      "Stock": 50,
      "Subtotal Neto": 4500.0,
    },
    {
      "Producto": "Producto 2",
      "Grupo": "Grupo B",
      "SKU": "SKU67890",
      "Precio unitario": 200.0,
      "Descuento": 20.0,
      "Stock": 30,
      "Subtotal Neto": 4800.0,
    },
    // Agrega más datos aquí
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
    final w = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: w.width,
          color: Colors.blue,
          child: mat.DataTable(
            columns: <mat.DataColumn>[
              mat.DataColumn(
                label: _buildTableCell('Producto'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Grupo'),
              ),
              mat.DataColumn(
                label: _buildTableCell('SKU'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Precio unitario'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Descuento'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Stock'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Subtotal Neto'),
              ),
              mat.DataColumn(
                label: _buildTableCell('Acciones'),
              ),
            ],
            rows: data.map((producto) {
              return mat.DataRow(
                cells: <mat.DataCell>[
                  mat.DataCell(Text(producto['Producto'])),
                  mat.DataCell(Text(producto['Grupo'])),
                  mat.DataCell(Text(producto['SKU'])),
                  mat.DataCell(Text(
                      '\$${producto['Precio unitario'].toStringAsFixed(2)}')),
                  mat.DataCell(Text('${producto['Descuento']}%')),
                  mat.DataCell(Text('${producto['Stock']}')),
                  mat.DataCell(Text(
                      '\$${producto['Subtotal Neto'].toStringAsFixed(2)}')),
                  mat.DataCell(
                    Center(
                      child: mat.PopupMenuButton<String>(
                          onSelected: (value) {
                            print('Opción seleccionada: $value');
                          },
                          itemBuilder: (BuildContext context) {
                            return const [
                              mat.PopupMenuItem(
                                value: 'detalles',
                                child: ListTile(
                                  leading: Icon(mat.Icons.info),
                                  title: Text('Ver detalles'),
                                ),
                              ),
                              mat.PopupMenuItem(
                                value: 'editar',
                                child: ListTile(
                                  leading: Icon(mat.Icons.edit),
                                  title: Text('Editar'),
                                ),
                              ),
                              mat.PopupMenuItem(
                                value: 'pausar',
                                child: ListTile(
                                  leading: Icon(mat.Icons.pause),
                                  title: Text('Pausar'),
                                ),
                              ),
                              mat.PopupMenuItem(
                                value: 'eliminar',
                                child: ListTile(
                                  leading: Icon(mat.Icons.delete),
                                  title: Text('Eliminar'),
                                ),
                              ),
                            ];
                          },
                          child: Container(
                            color: Colors.grey,
                            width: w.width * 0.07,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(mat.Icons.settings),
                                Text('Opciones'),
                                Icon(mat.Icons.keyboard_arrow_down),
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              );
            }).toList(),
          ),
        ),
      ),

      // child: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Table(
      //     columnWidths: const {
      //       0: FlexColumnWidth(3),
      //       1: FlexColumnWidth(3),
      //       2: FlexColumnWidth(3),
      //       3: FlexColumnWidth(3),
      //       4: FlexColumnWidth(3),
      //       5: FlexColumnWidth(3),
      //       6: FlexColumnWidth(3),
      //       7: FlexColumnWidth(3),
      //     },
      //     // border: TableBorder.all(color: Colors.white ),
      //     border: const TableBorder(
      //       horizontalInside: BorderSide(color: Colors.white),
      //     ),
      //     children: [
      //       TableRow(
      //         children: [
      //           _buildTableCell('Producto'),
      //           _buildTableCell('Grupo'),
      //           _buildTableCell('SKU'),
      //           _buildTableCell('Precio unitario'),
      //           _buildTableCell('Descuento'),
      //           _buildTableCell('Stock'),
      //           _buildTableCell('Subtotal Neto'),
      //           _buildTableCell('Acciones'),
      //         ],
      //       ),

      //       TableRow(
      //         children: [
      //           _buildTableCell('Nombre del producto'),
      //           _buildTableCell('P'),
      //           _buildTableCell('4323123SYS21'),
      //           _buildTableCell('\$ 45.00'),
      //           _buildTableCell('\$ 00.00'),
      //           _buildTableCell('43 pzs'),
      //           _buildTableCell('\$ 5542.00'),
      //           _buildTableCell('Opciones'),
      //         ],
      //       ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // TableRow(
      //       //   children: [
      //       //     _buildTableCell('Nombre del producto'),
      //       //     _buildTableCell('4323123SYS21'),
      //       //     _buildTableCell('\$ 45.00'),
      //       //     _buildTableCell('\$ 00.00'),
      //       //     _buildTableCell('43 pzs'),
      //       //     _buildTableCell('\$ 5542.00'),
      //       //     _buildTableCell('Opciones'),
      //       //   ],
      //       // ),
      //       // Añade más filas según sea necesario
      //     ],
      //   ),
      // ),
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
