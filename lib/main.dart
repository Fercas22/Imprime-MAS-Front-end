import 'package:imprime_mas/screens/navigation.dart';
import 'package:fluent_ui/fluent_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Imprime mas',
      theme: FluentThemeData.dark(),
      home: const Navigation(),
    );
  }
}
