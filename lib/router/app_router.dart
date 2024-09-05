import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        _loginRoutes(),
        AutoRoute(
          page: Clintes.page,
          path: '/cliente',
        ),
        AutoRoute(
          page: Customer.page,
          path: '/customer',
        ),
        AutoRoute(
          page: Profile.page,
          path: '/profile',
        ),
        AutoRoute(
          page: Navigation.page,
          path: '/Navigation',
          children: [
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              durationInMilliseconds: 0,
              page: ProductsInventory.page,
              path: 'products_inventory',
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.noTransition,
              durationInMilliseconds: 0,
              page: SaleProducts.page,
              path: 'sale_products',
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          page: SalesHistory.page,
          path: '/sales_history',
        ),
        AutoRoute(
          page: Settings.page,
          path: '/settings',
        ),
        AutoRoute(
          page: Suppliers.page,
          path: '/suppliers',
        ),
        AutoRoute(
          page: UsersCashiers.page,
          path: '/users_cashiers',
        ),
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
}
