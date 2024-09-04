import 'package:imprime_mas/theme/app_colors.dart';
import 'package:flutter/material.dart';

class VisualValidatorWidget extends StatelessWidget {
  final String text;
  final bool enable;
  final bool success;

  const VisualValidatorWidget({
    super.key,
    required this.text,
    required this.enable,
    required this.success,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            _getIcon(context),
            size: 15,
            color: _getColorIcon(context),
          ),
          _text(context),
        ],
      ),
    );
  }

  IconData _getIcon(BuildContext context) {
    if (success || !enable) {
      return Icons.check;
    }
    return Icons.cancel;
  }

  Color? _getColorIcon(BuildContext context) {
    if (!enable) {
      return AppColors.grey;
    }
    if (enable && success) {
      return AppColors.green;
    }

    return AppColors.danger;
  }

  Padding _text(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: _getColorText(context),
            ),
      ),
    );
  }

  Color? _getColorText(BuildContext context) {
    if (enable) {
      return AppColors.white;
    }
    return AppColors.grey;
  }
}
