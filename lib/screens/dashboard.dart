import 'package:window_manager/window_manager.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _checked = false;
  bool _toggle = false;
  double _slider = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Dashboard'),
      ),
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
              content: const Text('Toggle Box'),
              checked: _toggle,
              onChanged: (value) {
                setState(() {
                  _toggle = value;
                });
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
