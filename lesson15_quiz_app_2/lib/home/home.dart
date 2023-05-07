import 'package:flutter/material.dart';
import 'package:lesson15_quiz_app_2/constants/app_colors.dart';
import 'package:lesson15_quiz_app_2/constants/app_text_styles.dart';
import 'package:lesson15_quiz_app_2/constants/texts.dart';
import 'package:lesson15_quiz_app_2/useFile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuiz useQuiz = UseQuiz();
  List<Icon> iconAluu = [];
  void teksher(bool koldonuu){setState(() {
    if(useQuiz.isFinished()==true){
      showDialog(context: context, barrierDismissible: false, builder: 
      (BuildContext (context) {
        return AlertDialog(
          title: const Text('Test QuizApp'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                const <Widget>[
                  
                ]
              ],
            ),
          ),
        )
      }))
    }
  });
    
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(child: Text('Тапшырма 7', style: AppTextStyles.appBarTextStyle)
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Spacer(),
             Text(useQuiz.surooAluu(), 
            style: AppTextStyles.appTextStyle,
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.truebgrndColor,
                ),
                onPressed: (){
                   setState(() {
                  useQuiz.nextQuestion();
                });
                }, child: const Text(AppTexts.tuura, style: AppTextStyles.trueStyle,),
              ),
              
            ),

            const SizedBox(height: 30,),
            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.falsebgrndColor,
                ),
                onPressed: (){
                 
                  
                }, child: const Text(AppTexts.tuuraEmes, style: AppTextStyles.trueStyle,),
              ),
              
            ),
            const SizedBox(height: 30,),
            SizedBox(height: 40,
              child: ListView.builder(
                itemCount: iconAluu.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return iconAluu
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}