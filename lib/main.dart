import 'package:imprime_mas/router/navigation.dart';
import 'package:imprime_mas/presentation/pages/auth/login/login.dart';
import 'package:imprime_mas/theme/app_theme.dart';
import 'package:window_manager/window_manager.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() async {
  runApp(const MyApp());
  await windowManager.setMinimumSize(const Size(1280, 720));
  // WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();
  // windowManager.waitUntilReadyToShow().then((_) async {
  //   await windowManager.setFullScreen(true);
  // });
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
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Imprime mas',
      theme: isDarkMode ? ThemeClass.darkTheme : ThemeClass.lightTheme,
      // home: const LoginPage(),
      home: Navigation(
        toggleTheme: toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }
}
