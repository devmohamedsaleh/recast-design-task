import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';

class CustomProgressBar extends StatelessWidget {
  final double value;

  const CustomProgressBar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final progress = value.clamp(0.0, 1.0);

    return Container(
      height: 8,
      decoration: BoxDecoration(
        color: AppColors.softCard,
        borderRadius: BorderRadius.circular(20),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.gold,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}