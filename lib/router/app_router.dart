import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        _loginRoutes(),
        _dashboard(),
      ];

  AutoRoute _loginRoutes() {
    return AutoRoute(
      page: LoginRoutes.page,
      path: '/loginRoutes',
      initial: true,
      children: [
        AutoRoute(
          page: LoginRoute.page,
          path: 'login',
          initial: true,
        ),
        AutoRoute(
          page: ConfirmCodeRoute.page,
          path: 'confirm-code',
        ),
        AutoRoute(
          page: RestorePasswordRoute.page,
          path: 'restore-password',
        ),
      ],
    );
  }

  AutoRoute _dashboard() {
    return AutoRoute(
      page: Navigation.page,
      path: '/Navigation',
      children: [
        _customRoute(
          page: SaleProducts.page,
          path: 'sale_products',
          initial: true,
        ),
        _customRoute(
          page: ProductsInventory.page,
          path: 'products_inventory',
        ),
        _customRoute(
          page: Customer.page,
          path: 'customer',
        ),
        _customRoute(
          page: Suppliers.page,
          path: 'suppliers',
        ),
        _customRoute(
          page: UsersCashiers.page,
          path: 'user_cashiers',
        ),
        _customRoute(
          page: SalesHistory.page,
          path: 'sales_history',
        ),
        _customRoute(
          page: Profile.page,
          path: 'profile',
        ),
        _customRoute(
          page: Settings.page,
          path: 'settings',
        ),
        _customRoute(
          page: Clintes.page,
          path: 'clintes',
        ),
      ],
    );
  }

  CustomRoute<dynamic> _customRoute({
    required PageInfo page,
    String? path,
    bool? initial,
  }) {
    return CustomRoute(
      transitionsBuilder: TransitionsBuilders.noTransition,
      durationInMilliseconds: 0,
      page: page,
      path: path,
      initial: initial ?? false,
    );
  }
}
