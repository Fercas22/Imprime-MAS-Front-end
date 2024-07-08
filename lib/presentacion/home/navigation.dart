import 'dart:async';

import 'package:imprime_mas/presentacion/config/config.dart';
import 'package:imprime_mas/presentacion/customer/customer.dart';
import 'package:imprime_mas/presentacion/product/product.dart';
import 'package:imprime_mas/presentacion/profile/profile.dart';
import 'package:imprime_mas/presentacion/record/record.dart';
import 'package:imprime_mas/presentacion/supplier/supplier.dart';
import 'package:imprime_mas/presentacion/user/user.dart';
import 'package:imprime_mas/presentacion/dashboard/dashboard.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/screens/clientes.dart';

class Navigation extends StatefulWidget {
  final Function toggleTheme;
  final bool isDarkMode;

  const Navigation({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  late Timer _timer;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        // header: CustomHeader(dateTime: dateTime),
        selected: _currentIndex,
        // size: const NavigationPaneSize(openWidth: 324),
        onChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        displayMode: PaneDisplayMode.compact,
        // items: [
        //   PaneItem(
        //     icon: const Icon(
        //       FluentIcons.home,
        //       size: 20,
        //     ),
        //     title: const Text(
        //       'Punto de venta',
        //       // maxLines: 1,
        //       // overflow: TextOverflow.ellipsis,
        //       style: TextStyle(
        //         fontFamily: 'Microsoft Sans Serif',
        //         fontSize: 16,
        //         color: Color(0xFFFFFFFF),
        //       ),
        //     ),
        //     body: Dashboard(
        //       toggleTheme: widget.toggleTheme,
        //       isDarkMode: widget.isDarkMode,
        //     ),
        //   ),
        // ]
        items: _items,
        footerItems: _footerItems,
      ),
    );
  }

  List<NavigationPaneItem> get _items {
    return [
      PaneItem(
        icon: const Icon(
          FluentIcons.home,
          size: 20,
        ),
        title: const Text(
          'Punto de venta',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const Dashboard(),
      ),
      PaneItemSeparator(),
      PaneItem(
        icon: const Icon(
          FluentIcons.product_release,
          size: 22,
        ),
        title: const Text(
          'Productos e inventario',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const ProductView(),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.group,
          size: 22,
        ),
        title: const Text(
          'Clientes',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const CustomerView(),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.delivery_truck,
          size: 22,
        ),
        title: const Text(
          'Proveedores',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const SupplierView(),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.account_management,
          size: 22,
        ),
        title: const Text(
          'Usuarios y cajeros',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const UserView(),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.history,
          size: 22,
        ),
        title: const Text(
          'Historial de ventas',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const RecordView(),
      ),
    ];
  }

  List<String> itemsBox = ['1', '2', '3'];

  List<NavigationPaneItem> get _footerItems {
    return [
      PaneItem(
        icon: const Icon(
          FluentIcons.fabric_user_folder,
          size: 22,
        ),
        title: const Text(
          'Perfil de usuario',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const ProfileView(),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.settings,
          size: 22,
        ),
        title: const Text(
          'Configuracion',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: ConfigView(
          toggleTheme: widget.toggleTheme,
          isDarkMode: widget.isDarkMode,
        ),
      ),
      PaneItem(
        icon: const Icon(
          FluentIcons.sign_out,
          size: 22,
        ),
        title: const Text(
          'Cerrar sesión',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const Clintes(),
      ),
    ];
  }
}
