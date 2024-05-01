import 'package:fluent_ui/fluent_ui.dart';

class ThemeClass {
  static const String primaryFont = 'Microsoft Sans Serif';
  static const String secondaryFont = 'Microsoft Tai Le';

  static FluentThemeData lightTheme = FluentThemeData.light().copyWith(
    iconTheme: const IconThemeData(
      size: 22,
      color: Color(0xFFFFFFFF),
    ),
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
    navigationPaneTheme: const NavigationPaneThemeData(
      backgroundColor: Color(0xFF161616),
    ),
  );
}
