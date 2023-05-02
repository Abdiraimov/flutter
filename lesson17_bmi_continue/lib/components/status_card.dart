import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lesson17_bmi_continue/theme/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key, required this.icon, required this.text,
  });
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            color: AppColors.cardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
    children:  [
    Icon(icon, size: 80,),
    Text(
    text, 
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ],
            ),
            ),
            );
  }
}