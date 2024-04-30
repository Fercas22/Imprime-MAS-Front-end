import 'package:fluent_ui/fluent_ui.dart';

class CustomHeader extends StatelessWidget {
  final DateTime dateTime;

  const CustomHeader({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    final String hour = dateTime.hour.toString().padLeft(2, '0');
    final String minutes = dateTime.minute.toString().padLeft(2, '0');
    final String seconds = dateTime.second.toString().padLeft(2, '0');

    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        top: 20,
        right: 25,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFF262424),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            FluentIcons.clock,
            size: 22,
          ),
          const SizedBox(width: 10),
          _clockTime(hour, minutes, seconds),
        ],
      ),
    );
  }

  Flexible _clockTime(
    String hour,
    String minutes,
    String seconds,
  ) {
    return Flexible(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          '$hour : $minutes : $seconds',
          style: const TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
