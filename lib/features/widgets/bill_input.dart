import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BillInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onChanged;

  const BillInput({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 35.sp,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: "0.00",
        hintStyle: TextStyle(
          color: Colors.white38,
          fontSize: 25.sp,
        ),
        prefixIcon: Icon(
          Icons.currency_pound,
          color: Colors.white70,
          size: 24.sp,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(.06),
        contentPadding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 12.w,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (_) => onChanged(),
    );
  }
}
