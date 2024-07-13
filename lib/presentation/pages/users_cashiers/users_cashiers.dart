import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:imprime_mas/presentation/widgets/custom_header.dart';

class UsersCashiers extends StatefulWidget {
  const UsersCashiers({super.key});

  @override
  State<UsersCashiers> createState() => _UsersCashiersState();
}

class _UsersCashiersState extends State<UsersCashiers> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: CustomHeader(title: 'Usuarios y cajeros'),
      content: Center(
        child: Text('Contenido de usuarios y cajeros'),
      ),
    );
  }
}
