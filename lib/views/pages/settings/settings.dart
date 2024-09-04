import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/views/widgets/custom_header.dart';

@RoutePage()
class Settings extends StatefulWidget {
  final Function toggleTheme;
  final bool isDarkMode;

  const Settings({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _checked = false;
  double _slider = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const CustomHeader(title: 'Configuraciones'),
      content: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 15),
            Checkbox(
              content: const Text('FulL Screen'),
              checked: _checked,
              onChanged: (value) {
                setState(() {
                  _checked = value!;
                });
              },
            ),
            const SizedBox(height: 15),
            ToggleSwitch(
              content: const Text('Cambiar tema'),
              checked: widget.isDarkMode,
              onChanged: (value) {
                widget.toggleTheme(value);
              },
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: Slider(
                label: '${_slider.toInt()}',
                max: 100,
                value: _slider,
                onChanged: (value) {
                  setState(() {
                    _slider = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 15),
            const ProgressBar(),
            const SizedBox(height: 15),
            const ProgressRing(),
          ],
        ),
      ),
    );
  }
}
