import 'package:flutter/material.dart';
import 'package:lesson18_bmi_continue2/components/circular_button.dart';
import 'package:lesson18_bmi_continue2/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children:  [
    Text(text, style: AppTextStyles.titleStyle,),
  Text(san,style: AppTextStyles.sanStyle),
    Row( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircularButton(icon: Icons.remove, ),
      
       SizedBox(
        width: 10,
      ),
       CircularButton(icon: Icons.add,),
    ],)
    ],
    );
  }
}