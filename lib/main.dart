import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/screens/home_screen.dart';

void main() {
  runApp(const TipCalculator());
}

class TipCalculator extends StatelessWidget {
  const TipCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TipEasy',
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Cairo',
            useMaterial3: true,
          ),
          home: const TipEasyScreen(),
        );
      },
    );
  }
}