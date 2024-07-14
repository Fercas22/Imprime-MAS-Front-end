import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomHeaderAuth extends StatelessWidget {
  final String title;
  final String? subtitle;

  const CustomHeaderAuth({
    super.key,
    required this.title,
    this.subtitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 467,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          subtitle != '' ? subtitleWidgets(subtitle ?? '') : const SizedBox(),
          const fluent.Divider(
            style: fluent.DividerThemeData(
              decoration: BoxDecoration(
                color: AppColors.grey,
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget subtitleWidgets(String subtitle) {
    return Column(
      children: [
        Text(
          subtitle,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
