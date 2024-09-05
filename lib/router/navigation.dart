import 'package:auto_route/auto_route.dart';
// import 'package:imprime_mas/presentation/pages/products_inventory/products_inventory.dart';
// import 'package:imprime_mas/views/pages/users_cashiers/users_cashiers.dart';
// import 'package:imprime_mas/views/pages/sales_history/sales_history.dart';
// import 'package:imprime_mas/presentation/pages/sale_products/sale_products.dart';
// import 'package:imprime_mas/views/pages/suppliers/suppliers.dart';
// import 'package:imprime_mas/views/pages/customers/clientes.dart';
// import 'package:imprime_mas/views/pages/customers/customer.dart';
// import 'package:imprime_mas/views/pages/settings/settings.dart';
// import 'package:imprime_mas/views/pages/profile/profile.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/router/app_router.dart';
import 'package:imprime_mas/router/app_router.gr.dart';
import 'package:imprime_mas/theme/app_theme.dart';

@RoutePage()
class Navigation extends StatefulWidget {
  const Navigation({
    super.key,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // int _currentIndex = 0;
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      theme: ThemeClass.darkTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      builder: (context, router) {
        return NavigationView(
          // appBar: NavigationAppBar(
          //   title: Text('adsadasdasd'),
          // ),
          pane: NavigationPane(
            displayMode: PaneDisplayMode.compact,
            items: [
              PaneItem(
                icon: Icon(FluentIcons.home),
                title: Text('Home'),
                body: AutoRouter(),
                onTap: () {
                  print('asd');
                  context.router.push(SaleProducts());
                },
              ),
              PaneItem(
                icon: Icon(FluentIcons.settings),
                title: Text('Settings'),
                body: AutoRouter(),
                onTap: () {
                  context.router.push(ProductsInventory());
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // List<NavigationPaneItem> get _items {
  //   return [
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.home,
  //         size: 20,
  //       ),
  //       title: const Text(
  //         'Punto de venta',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const SaleProducts(),
  //     ),
  //     PaneItemSeparator(),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.product_release,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Productos e inventario',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const ProductsInventory(),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.group,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Clientes',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const Customer(),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.delivery_truck,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Proveedores',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const Suppliers(),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.account_management,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Usuarios y cajeros',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const UsersCashiers(),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.history,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Historial de ventas',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const SalesHistory(),
  //     ),
  //   ];
  // }

  // List<NavigationPaneItem> get _footerItems {
  //   return [
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.fabric_user_folder,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Perfil de usuario',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const Profile(),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.settings,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Configuracion',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: Settings(
  //         toggleTheme: widget.toggleTheme,
  //         isDarkMode: widget.isDarkMode,
  //       ),
  //     ),
  //     PaneItem(
  //       icon: const Icon(
  //         FluentIcons.sign_out,
  //         size: 22,
  //       ),
  //       title: const Text(
  //         'Cerrar sesión',
  //         style: TextStyle(
  //           fontFamily: 'Microsoft Sans Serif',
  //           fontSize: 16,
  //           color: Color(0xFFFFFFFF),
  //         ),
  //       ),
  //       body: const Clintes(),
  //     ),
  //   ];
  // }
}
