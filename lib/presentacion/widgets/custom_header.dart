import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/theme/app_theme.dart';

class CustomHeader extends StatefulWidget {
  final String title;

  const CustomHeader({
    super.key,
    required this.title,
  });

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  late Timer _timer;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageHeader(
      title: _titleText(),
      commandBar: _clock(),
    );
  }

  Text _titleText() {
    return Text(
      widget.title,
      style: ThemeClass.lightTheme.typography.titleLarge,
    );
  }

  Container _clock() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromARGB(255, 56, 54, 54),
      ),
      child: _watchBody(),
    );
  }

  Row _watchBody() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(FluentIcons.clock),
        const SizedBox(width: 10),
        _clockTime(),
      ],
    );
  }

  Flexible _clockTime() {
    final String hour = dateTime.hour.toString().padLeft(2, '0');
    final String minutes = dateTime.minute.toString().padLeft(2, '0');
    final String seconds = dateTime.second.toString().padLeft(2, '0');

    return Flexible(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          '$hour : $minutes : $seconds',
          style: ThemeClass.lightTheme.typography.body,
        ),
      ),
    );
  }
}
