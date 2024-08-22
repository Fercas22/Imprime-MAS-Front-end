import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
          initial: true,
        ),
        AutoRoute(
          page: ConfirmCode.page,
          path: '/confirm_code',
        ),
        AutoRoute(
          page: RestorePassword.page,
          path: '/restore_password',
        ),
        AutoRoute(
          page: Clintes.page,
          path: '/cliente',
        ),
        AutoRoute(
          page: Customer.page,
          path: '/customer',
        ),
        AutoRoute(
          page: ProductsInventory.page,
          path: '/products_inventory',
        ),
        AutoRoute(
          page: Profile.page,
          path: '/profile',
        ),
        AutoRoute(
          page: SaleProducts.page,
          path: '/sale_products',
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
}
