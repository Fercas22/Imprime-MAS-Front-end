import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class CustomStatisticsCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String statistics;
  final Color? statisticColor;

  const CustomStatisticsCard({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.statistics,
    this.statisticColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(19),
        width: 300,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF161616),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleText(),
            subtitle != '' ? _subtitleText() : const SizedBox(height: 12),
            _statisticsText(),
          ],
        ),
      ),
    );
  }

  Text _titleText() {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontFamily: 'Microsoft Sans Serif',
        fontSize: 16,
        color: Color(0xFF808080),
      ),
    );
  }

  Padding _subtitleText() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        subtitle ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontFamily: 'Microsoft Sans Serif',
          fontSize: 16,
          color: Color(0xFF808080),
        ),
      ),
    );
  }

  Flexible _statisticsText() {
    return Flexible(
      child: Container(
        alignment: Alignment.bottomRight,
        child: Text(
          statistics,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 35,
            color: statisticColor ?? const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
