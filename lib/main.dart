import 'package:imprime_mas/presentation/pages/auth/restore_password/restore_password.dart';
import 'package:imprime_mas/presentation/pages/auth/confirm_code/confirm_code.dart';
import 'package:imprime_mas/presentation/pages/auth/login/login.dart';
import 'package:imprime_mas/router/app_router.dart';
import 'package:imprime_mas/router/navigation.dart';
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

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Imprime más',
      theme: isDarkMode ? ThemeClass.darkTheme : ThemeClass.lightTheme,
      routerConfig: appRouter.config(),
    );
  }
}
