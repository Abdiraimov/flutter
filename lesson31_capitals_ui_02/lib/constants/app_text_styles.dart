import 'package:flutter/material.dart';
import 'package:lesson31_capitals_ui_02/constants/app_colors.dart';

class AppTextStyle {
  static const TextStyle num1Style =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.red);
  static const TextStyle num2Style =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);
  static const TextStyle num3Style =
      TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.green);
      static const TextStyle capitalStyle = TextStyle(color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800);
}
