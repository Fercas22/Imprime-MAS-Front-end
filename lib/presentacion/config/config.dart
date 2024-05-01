import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentacion/widgets/custom_header.dart';

class ConfigView extends StatefulWidget {
  final Function toggleTheme;
  final bool isDarkMode;

  const ConfigView({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<ConfigView> createState() => _ConfigViewState();
}

class _ConfigViewState extends State<ConfigView> {
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
