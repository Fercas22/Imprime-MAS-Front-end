import 'package:imprime_mas/router/app_router.dart';
import 'package:window_manager/window_manager.dart';
import 'package:imprime_mas/theme/app_theme.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() async {
  final appRouter = AppRouter();
  runApp(
    MyApp(appRouter: appRouter),
  );
  await windowManager.setMinimumSize(
    const Size(1280, 720),
  );
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;

  const MyApp({
    super.key,
    required this.appRouter,
  });

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

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Imprime más',
      theme: isDarkMode ? ThemeClass.darkTheme : ThemeClass.lightTheme,
      routerDelegate: widget.appRouter.delegate(),
      routeInformationParser: widget.appRouter.defaultRouteParser(),
    );
  }
}
