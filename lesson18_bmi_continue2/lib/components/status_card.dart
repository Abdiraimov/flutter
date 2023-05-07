import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson18_bmi_continue2/components/circular_button.dart';
import 'package:lesson18_bmi_continue2/theme/app_colors.dart';
import 'package:lesson18_bmi_continue2/theme/app_text_style.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key, required this.child,
  });
  final Widget child;
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            color: AppColors.cardColor,
            child: child
            ),
            );
  }
}
