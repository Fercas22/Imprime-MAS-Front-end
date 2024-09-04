import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:imprime_mas/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFooterAuth extends StatelessWidget {
  final String buttonTitle;
  final Function()? onPressedButton;
  final String textButtonTitle;
  final Function()? onPressedTextButton;

  const CustomFooterAuth({
    super.key,
    required this.buttonTitle,
    required this.onPressedButton,
    required this.textButtonTitle,
    required this.onPressedTextButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 467,
      child: Column(
        children: [
          const SizedBox(height: 40),
          _button(),
          const SizedBox(height: 30),
          _textButton(),
        ],
      ),
    );
  }

  fluent.SizedBox _button() {
    return SizedBox(
      width: double.infinity,
      child: fluent.Button(
        style: fluent.ButtonStyle(
          backgroundColor: fluent.ButtonState.all(
            AppColors.green,
          ),
        ),
        onPressed: onPressedButton,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 15,
          ),
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: AppColors.strongBlack,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  TextButton _textButton() {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.transparent;
          }
          return null;
        }),
      ),
      onPressed: onPressedTextButton,
      child: Text(
        textButtonTitle,
        style: const TextStyle(
          color: AppColors.green,
          fontSize: 18,
        ),
      ),
    );
  }
}
