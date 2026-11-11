import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/widgets/gradient_icon_button.dart';
import '../widgets/bill_input.dart';
import '../widgets/tip_slider.dart';
import '../widgets/quick_tip_buttons.dart';
import '../widgets/result_box.dart';
import '../widgets/person_selector.dart';

class TipEasyScreen extends StatefulWidget {
  const TipEasyScreen({super.key});

  @override
  State<TipEasyScreen> createState() => _TipEasyScreenState();
}

class _TipEasyScreenState extends State<TipEasyScreen> {
  final billController = TextEditingController();
  double tipPercent = 15;
  int persons = 1;

  double get bill => double.tryParse(billController.text) ?? 0;
  double get tip => bill * tipPercent / 100;
  double get total => bill + tip;
  double get perPerson => total / persons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.darkBg1, AppColors.darkBg2, AppColors.darkBg3],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                SizedBox(height: 30.h),
                _mainCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "TipEasy",
              style: TextStyle(
                fontSize: 35.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Elegant Tip Calculator",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _mainCard() {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        children: [
          BillInput(controller: billController, onChanged: () => setState(() {})),
          SizedBox(height: 20.h),
          TipSlider(percent: tipPercent, tipAmount: tip, onChange: (v) => setState(() => tipPercent = v)),
          SizedBox(height: 15.h),
          QuickTipButtons(current: tipPercent, onSelect: (v) => setState(() => tipPercent = v)),
          SizedBox(height: 20.h),
          ResultBox(label: "Tip", value: "£${tip.toStringAsFixed(2)}", color: AppColors.primary),
          SizedBox(height: 20.h),
          ResultBox(label: "Total", value: "£${total.toStringAsFixed(2)}", color: AppColors.accent),
          SizedBox(height: 25.h),
          PersonSelector(
            count: persons,
            onAdd: () => setState(() => persons++),
            onRemove: () => setState(() => persons = persons > 1 ? persons - 1 : 1),
            perPerson: perPerson,
          ),
        ],
      ),
    );
  }
}
