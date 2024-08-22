import 'package:imprime_mas/router/app_router.dart';
import 'package:window_manager/window_manager.dart';
import 'package:imprime_mas/theme/app_theme.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() async {
  runApp(const MyApp());
  await windowManager.setMinimumSize(const Size(1280, 720));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;

  void toggleTheme(bool isDark) {
    setState(() {
      isDarkMode = isDark;
    });
  }

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Imprime más',
      theme: isDarkMode ? ThemeClass.darkTheme : ThemeClass.lightTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final appRouter = AppRouter();
  //   return FluentApp.router(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Imprime más',
  //     theme: isDarkMode ? ThemeClass.darkTheme : ThemeClass.lightTheme,
  //     routerConfig: appRouter.config(),
  //   );
  // }
}

// @RoutePage()
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return NavigationView(
//       pane: NavigationPane(
//         selected: 0,
//         onChanged: (index) {
//           switch (index) {
//             case 0:
//               context.router.push(const LoginRoute());
//               break;
//             case 1:
//               context.router.push(const ConfirmCode());
//               break;
//             case 2:
//               context.router.push(const RestorePassword());
//               break;
//           }
//         },
//         items: [
//           PaneItem(
//               icon: const Icon(FluentIcons.home),
//               title: const Text('Home'),
//               body: Container()),
//           PaneItem(
//               icon: const Icon(FluentIcons.settings),
//               title: const Text('Settings'),
//               body: Container()),
//           PaneItem(
//               icon: const Icon(FluentIcons.ice),
//               title: const Text('noc'),
//               body: Container()),
//         ],
//       ),
      
//       // content: const AutoRouter(), // AutoRouter gestionará el contenido
//     );
//   }
// }
