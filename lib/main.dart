import 'package:imprime_mas/presentacion/home/navigation.dart';
import 'package:imprime_mas/presentacion/login/login.dart';
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
      
      // theme: ThemeClass.lightTheme,
      // theme: FluentThemeData(
      //   /// Color primario
      //   accentColor: AccentColor.swatch(
      //     const {
      //       'normal': Color(0xFF218052),
      //     },
      //   ),

      //   /// Panel de navegacion
      //   navigationPaneTheme: const NavigationPaneThemeData(
      //     /// Color del Menu lateral
      //     backgroundColor: Color(0xFF161616),

      //     /// Color de la linea que indica la opcion seleccionada
      //     highlightColor: Color(0xFF218052),
      //   ),

      //   /// Color de los content o body derecho del NavigationPane
      //   scaffoldBackgroundColor: const Color(0xFF242424),

      //   /// Color del menu de los select
      //   menuColor: Colors.blue,

      //   /// Nos da un fondo blanco u oscuro
      //   brightness: Brightness.dark,

      //   /// Estilos de los iconos
      //   iconTheme: const IconThemeData(
      //     size: 22,
      //     color: Color(0xFFFFFFFF),
      //   ),

      //   /// Estilos de la tipografia
      //   typography: const Typography.raw(
      //     titleLarge: TextStyle(
      //       // fontFamily: secondaryFont,
      //       fontSize: 36,
      //       fontWeight: FontWeight.bold,
      //       color: Color(0xFFFFFFFF),
      //     ),
      //     body: TextStyle(
      //       // fontFamily: primaryFont,
      //       fontSize: 16,
      //       fontWeight: FontWeight.normal,
      //       color: Color(0xFFFFFFFF),
      //     ),
      //   ),
      // ),
      // home: const LoginPage(),
      home: Navigation(
        toggleTheme: toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }
}
