import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:imprime_mas/presentation/widgets/custom_header.dart';

class SalesHistory extends StatefulWidget {
  const SalesHistory({super.key});

  @override
  State<SalesHistory> createState() => _SalesHistoryState();
}

class _SalesHistoryState extends State<SalesHistory> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: CustomHeader(title: 'Historial de ventas'),
      content: Center(
        child: Text('Contenido del historial de ventas'),
      ),
    );
  }
}
