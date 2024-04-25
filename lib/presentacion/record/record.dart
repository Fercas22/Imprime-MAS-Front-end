import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class RecordView extends StatefulWidget {
  const RecordView({super.key});

  @override
  State<RecordView> createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Historial'),
      ),
      content: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Columna 1')),
              DataColumn(label: Text('Columna 2')),
              DataColumn(label: Text('Columna 3')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(
                  Text('Dato 1'),
                  // onTap: () {
                  //   print('object');
                  // },
                ),
                DataCell(Text('Dato 2')),
                DataCell(Text('Dato 3')),
              ]),
              DataRow(
                cells: [
                  DataCell(Text('Dato 4')),
                  DataCell(Text('Dato 5')),
                  DataCell(Text('Dato 6')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
