import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styles/app_colors.dart';

class TipSlider extends StatelessWidget {
  final double percent;
  final Function(double) onChange;
  final double tipAmount;

  const TipSlider({
    super.key,
    required this.percent,
    required this.onChange,
    required this.tipAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tip: ${percent.toInt()}%",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "£${tipAmount.toStringAsFixed(2)}",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Slider(
          value: percent,
          min: 0,
          max: 50,
          divisions: 50,
          activeColor: AppColors.primary,
          inactiveColor: Colors.white24,
          onChanged: onChange,
        ),
      ],
    );
  }
}
