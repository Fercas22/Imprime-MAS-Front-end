import 'package:fluent_ui/fluent_ui.dart';

class CustomStatisticsCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String statistics;

  const CustomStatisticsCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.statistics,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(11),
        width: 241,
        color: const Color(0xFFE4E4E4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                subtitle ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF808080),
                ),
              ),
            ),
            const SizedBox(height: 27),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                statistics,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFFB3B3B3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
