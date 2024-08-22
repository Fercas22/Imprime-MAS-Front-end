// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:fluent_ui/fluent_ui.dart' as _i14;
import 'package:imprime_mas/presentation/pages/auth/confirm_code/confirm_code.dart'
    as _i2;
import 'package:imprime_mas/presentation/pages/auth/login/login.dart' as _i4;
import 'package:imprime_mas/presentation/pages/auth/restore_password/restore_password.dart'
    as _i7;
import 'package:imprime_mas/presentation/pages/customers/clientes.dart' as _i1;
import 'package:imprime_mas/presentation/pages/customers/customer.dart' as _i3;
import 'package:imprime_mas/presentation/pages/products_inventory/products_inventory.dart'
    as _i5;
import 'package:imprime_mas/presentation/pages/profile/profile.dart' as _i6;
import 'package:imprime_mas/presentation/pages/sale_products/sale_products.dart'
    as _i8;
import 'package:imprime_mas/presentation/pages/sales_history/sales_history.dart'
    as _i9;
import 'package:imprime_mas/presentation/pages/settings/settings.dart' as _i10;
import 'package:imprime_mas/presentation/pages/suppliers/suppliers.dart'
    as _i11;
import 'package:imprime_mas/presentation/pages/users_cashiers/users_cashiers.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    Clintes.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Clintes(),
      );
    },
    ConfirmCode.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ConfirmCode(),
      );
    },
    Customer.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Customer(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    ProductsInventory.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProductsInventory(),
      );
    },
    Profile.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Profile(),
      );
    },
    RestorePassword.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RestorePassword(),
      );
    },
    SaleProducts.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SaleProducts(),
      );
    },
    SalesHistory.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SalesHistory(),
      );
    },
    Settings.name: (routeData) {
      final args = routeData.argsAs<SettingsArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.Settings(
          key: args.key,
          toggleTheme: args.toggleTheme,
          isDarkMode: args.isDarkMode,
        ),
      );
    },
    Suppliers.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Suppliers(),
      );
    },
    UsersCashiers.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UsersCashiers(),
      );
    },
  };
}

/// generated route for
/// [_i1.Clintes]
class Clintes extends _i13.PageRouteInfo<void> {
  const Clintes({List<_i13.PageRouteInfo>? children})
      : super(
          Clintes.name,
          initialChildren: children,
        );

  static const String name = 'Clintes';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConfirmCode]
class ConfirmCode extends _i13.PageRouteInfo<void> {
  const ConfirmCode({List<_i13.PageRouteInfo>? children})
      : super(
          ConfirmCode.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmCode';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Customer]
class Customer extends _i13.PageRouteInfo<void> {
  const Customer({List<_i13.PageRouteInfo>? children})
      : super(
          Customer.name,
          initialChildren: children,
        );

  static const String name = 'Customer';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProductsInventory]
class ProductsInventory extends _i13.PageRouteInfo<void> {
  const ProductsInventory({List<_i13.PageRouteInfo>? children})
      : super(
          ProductsInventory.name,
          initialChildren: children,
        );

  static const String name = 'ProductsInventory';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Profile]
class Profile extends _i13.PageRouteInfo<void> {
  const Profile({List<_i13.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RestorePassword]
class RestorePassword extends _i13.PageRouteInfo<void> {
  const RestorePassword({List<_i13.PageRouteInfo>? children})
      : super(
          RestorePassword.name,
          initialChildren: children,
        );

  static const String name = 'RestorePassword';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SaleProducts]
class SaleProducts extends _i13.PageRouteInfo<void> {
  const SaleProducts({List<_i13.PageRouteInfo>? children})
      : super(
          SaleProducts.name,
          initialChildren: children,
        );

  static const String name = 'SaleProducts';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SalesHistory]
class SalesHistory extends _i13.PageRouteInfo<void> {
  const SalesHistory({List<_i13.PageRouteInfo>? children})
      : super(
          SalesHistory.name,
          initialChildren: children,
        );

  static const String name = 'SalesHistory';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Settings]
class Settings extends _i13.PageRouteInfo<SettingsArgs> {
  Settings({
    _i14.Key? key,
    required Function toggleTheme,
    required bool isDarkMode,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          Settings.name,
          args: SettingsArgs(
            key: key,
            toggleTheme: toggleTheme,
            isDarkMode: isDarkMode,
          ),
          initialChildren: children,
        );

  static const String name = 'Settings';

  static const _i13.PageInfo<SettingsArgs> page =
      _i13.PageInfo<SettingsArgs>(name);
}

class SettingsArgs {
  const SettingsArgs({
    this.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  final _i14.Key? key;

  final Function toggleTheme;

  final bool isDarkMode;

  @override
  String toString() {
    return 'SettingsArgs{key: $key, toggleTheme: $toggleTheme, isDarkMode: $isDarkMode}';
  }
}

/// generated route for
/// [_i11.Suppliers]
class Suppliers extends _i13.PageRouteInfo<void> {
  const Suppliers({List<_i13.PageRouteInfo>? children})
      : super(
          Suppliers.name,
          initialChildren: children,
        );

  static const String name = 'Suppliers';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UsersCashiers]
class UsersCashiers extends _i13.PageRouteInfo<void> {
  const UsersCashiers({List<_i13.PageRouteInfo>? children})
      : super(
          UsersCashiers.name,
          initialChildren: children,
        );

  static const String name = 'UsersCashiers';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
