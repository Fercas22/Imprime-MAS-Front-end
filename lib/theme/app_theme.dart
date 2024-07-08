import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/theme/app_colors.dart';

class ThemeClass {
  static const String primaryFont = 'Microsoft Sans Serif';
  static const String secondaryFont = 'Microsoft Tai Le';

  static FluentThemeData lightTheme = FluentThemeData.light().copyWith(
    /// Color primario
    accentColor: AccentColor.swatch(
      const {
        'normal': Color(0xFF218052),
      },
    ),

    /// Panel de navegacion
    navigationPaneTheme: const NavigationPaneThemeData(
      /// Color del Menu lateral
      backgroundColor: Color(0xFF161616),

      /// Color de la linea que indica la opcion seleccionada
      highlightColor: Color(0xFF218052),
    ),

    /// Color de los content o body derecho del NavigationPane
    scaffoldBackgroundColor: const Color(0xFF242424),

    /// Color del menu de los select
    menuColor: Colors.blue,

    /// Nos da un fondo blanco u oscuro
    brightness: Brightness.light,

    /// Estilos de los iconos
    iconTheme: const IconThemeData(
      size: 22,
      color: Color(0xFF000000),
    ),

    /// Estilos de la tipografia
    typography: const Typography.raw(
      titleLarge: TextStyle(
        fontFamily: secondaryFont,
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),
      body: TextStyle(
        fontFamily: primaryFont,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFF000000),
      ),
    ),
  );

  static FluentThemeData darkTheme = FluentThemeData.dark().copyWith(
    /// Color primario
    accentColor: AccentColor.swatch(
      const {
        'normal': AppColors.green,
      },
    ),

    /// Panel de navegacion
    navigationPaneTheme: const NavigationPaneThemeData(
      /// Color del Menu lateral
      backgroundColor: AppColors.negroFuerte,

      /// Color de la linea que indica la opcion seleccionada
      highlightColor: AppColors.green,
    ),

    /// Color de los content o body derecho del NavigationPane
    scaffoldBackgroundColor: AppColors.negroFuerte,

    /// Color del menu de los select
    menuColor: Colors.blue,

    /// Nos da un fondo blanco u oscuro
    brightness: Brightness.dark,

    /// Estilos de los iconos
    iconTheme: const IconThemeData(
      size: 22,
      color: Color(0xFFFFFFFF),
    ),

    /// Estilos de la tipografia
    typography: const Typography.raw(
      titleLarge: TextStyle(
        fontFamily: secondaryFont,
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
      body: TextStyle(
        fontFamily: primaryFont,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Color(0xFFFFFFFF),
      ),
    ),
  );
}
