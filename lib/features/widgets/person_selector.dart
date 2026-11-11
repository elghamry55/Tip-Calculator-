import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styles/app_colors.dart';

class PersonSelector extends StatelessWidget {
  final int count;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final double perPerson;

  const PersonSelector({
    super.key,
    required this.count,
    required this.onAdd,
    required this.onRemove,
    required this.perPerson,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onRemove,
              icon: Icon(
                Icons.remove_circle_outline,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
            Text(
              "$count Persons",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp,
              ),
            ),
            IconButton(
              onPressed: onAdd,
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white70,
                size: 27.sp,
              ),
            ),
          ],
        ),
        Text(
          "£${perPerson.toStringAsFixed(2)} / person",
          style: TextStyle(
            color: AppColors.accent,
            fontWeight: FontWeight.bold,
            fontSize: 27.sp,
          ),
        ),
      ],
    );
  }
}
