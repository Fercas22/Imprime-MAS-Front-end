import 'dart:async';

import 'package:imprime_mas/presentacion/config/config.dart';
import 'package:imprime_mas/presentacion/customer/customer.dart';
import 'package:imprime_mas/presentacion/home/widgets/custom_app_bar.dart';
import 'package:imprime_mas/presentacion/product/product.dart';
import 'package:imprime_mas/presentacion/profile/profile.dart';
import 'package:imprime_mas/presentacion/record/record.dart';
import 'package:imprime_mas/presentacion/supplier/supplier.dart';
import 'package:imprime_mas/presentacion/user/user.dart';
import 'package:imprime_mas/screens/dashboard.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  late Timer _timer;
  DateTime dateTime = DateTime.now();
  PaneDisplayMode displayMode = PaneDisplayMode.auto;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: CustomAppBar().navigationAppBar(context, dateTime),
      pane: NavigationPane(
        selected: _currentIndex,
        size: const NavigationPaneSize(openWidth: 200),
        onChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        displayMode: displayMode,
        items: _items,
        footerItems: _footerItems,
      ),
    );
  }

  List<NavigationPaneItem> get _items {
    return [
      PaneItem(
        icon: const Icon(FluentIcons.home),
        title: const Text('Punto de venta'),
        body: const Dashboard(),
      ),
      PaneItemSeparator(),
      PaneItem(
        icon: const Icon(FluentIcons.product_catalog),
        title: const Text('Productos'),
        body: const ProductView(),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.customer_assets),
        title: const Text('Clientes'),
        body: const CustomerView(),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.provisioning_package),
        title: const Text('Proveedores'),
        body: const SupplierView(),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.calendar),
        title: const Text('Historial'),
        body: const RecordView(),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.user_optional),
        title: const Text('Usuarios'),
        body: const UserView(),
      ),
      PaneItem(
        icon: const Icon(FluentIcons.profile_search),
        title: const Text('Perfil'),
        body: const ProfileView(),
      ),
    ];
  }

  List<String> itemsBox = ['1', '2', '3'];

  List<NavigationPaneItem> get _footerItems {
    return [
      PaneItem(
        icon: const Icon(FluentIcons.settings),
        title: const Text('Settings'),
        body: const ConfigView(),
      ),
      PaneItemExpander(
        icon: const Icon(FluentIcons.account_management),
        title: const Text('Account'),
        body: const ConfigView(),
        items: [
          PaneItemHeader(
            header: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('DisplayMode'),
            ),
          ),
          PaneItemAction(
            icon: const Icon(FluentIcons.mail),
            title: const Text('Auto'),
            onTap: () {
              setState(() {
                displayMode = PaneDisplayMode.auto;
              });
            },
          ),
          PaneItemAction(
            icon: const Icon(FluentIcons.calendar),
            title: const Text('Compact'),
            onTap: () {
              setState(() {
                displayMode = PaneDisplayMode.compact;
              });
            },
          ),
          PaneItemAction(
            icon: const Icon(FluentIcons.calendar),
            title: const Text('Minimal'),
            onTap: () {
              setState(() {
                displayMode = PaneDisplayMode.minimal;
              });
            },
          ),
          PaneItemAction(
            icon: const Icon(FluentIcons.calendar),
            title: const Text('Open'),
            onTap: () {
              setState(() {
                displayMode = PaneDisplayMode.open;
              });
            },
          ),
          // PaneItemAction(
          //   icon: const Icon(FluentIcons.calendar),
          //   title: const Text('Top'),
          //   onTap: () {
          //     setState(() {
          //       displayMode = PaneDisplayMode.top;
          //     });
          //   },
          // ),
        ],
      ),
    ];
  }
}
