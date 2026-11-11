import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styles/app_colors.dart';

class QuickTipButtons extends StatelessWidget {
  final double current;
  final Function(double) onSelect;

  const QuickTipButtons({
    super.key,
    required this.current,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final preset = [10, 15, 20, 25];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: preset.map((p) {
        final active = current == p;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: ElevatedButton(
              onPressed: () => onSelect(p.toDouble()),
              style: ElevatedButton.styleFrom(
                backgroundColor: active ? AppColors.primary : Colors.white12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.r),
                ),
                elevation: active ? 10 : 0,
              ),
              child: Text(
                "$p%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
