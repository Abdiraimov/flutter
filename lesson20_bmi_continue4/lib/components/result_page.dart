import 'package:flutter/material.dart';
import 'package:lesson20_bmi_continue4/components/all_calculate.dart';
import 'package:lesson20_bmi_continue4/theme/app_colors.dart';
import 'package:lesson20_bmi_continue4/theme/app_text_style.dart';
import 'package:lesson20_bmi_continue4/theme/app_texts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    double results = BmiCalculator().bmi(height: metri, weight: salmak);
    return  Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
    title: const Text('ResultPage'),
  ),
  body: Padding(
    padding: const EdgeInsets.only(left: 11,right: 9, top: 43),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Padding(
        padding:  EdgeInsets.only(left: 14),
        child:  Text(
          'Жыйынтык', style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
      ),
        
      Container(
        height: 315,
        width: 380,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: AppColors.cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
          Text(
            BmiCalculator().bmiResult(results),
            style: const TextStyle(fontSize: 24,color: Color(0xff08E82c)),),
          Text(
            results.toStringAsFixed(1),style: const TextStyle(fontSize: 80,),),
          Text(
            BmiCalculator().bmiDescription(results),
            style: const TextStyle(fontSize: 12,),),
          ]),
      ),
    ],
    ),
  ),
  bottomNavigationBar: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed:  (){},
      child: const Text(
        AppTexts.restart,
        style: AppTextStyles.calculateStyle,
        )
        ),
);
}
}