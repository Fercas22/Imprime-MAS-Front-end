import 'package:imprime_mas/screens/clientes.dart';
import 'package:imprime_mas/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        // backgroundColor: Color(0xFFFF9000),
        actions: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Text('Reloj'),
        ),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(
            size: 61,
          ),
        ),
      ),
      pane: NavigationPane(
        // size: const NavigationPaneSize(openWidth: 78),
        header: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text('Lista de elementos'),
        ),
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.a_t_p_logo),
            title: const Text('Dashboard'),
            body: const Dashboard(),
          ),
          PaneItem(
            icon: const Icon(Icons.person_2_outlined),
            title: const Text('Clientes'),
            body: const Clintes(),
          )
        ],
        selected: _currentIndex,
        displayMode: PaneDisplayMode.top,
        onChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      // content: NavigationBar(
      //   selectedIndex: _currentIndex,
      //   destinations: const [
      //     Dashboard(),
      //     Clintes(),
      //   ],
      // ),
    );
  }
}
