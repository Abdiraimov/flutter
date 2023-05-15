import 'dart:math';

class BmiCalculator{
  double bmi({required double height,required int weight}){
    final res = weight / pow(height / 100,2 );
    return res;
  }

  String bmiResult(res){
    if(res <= 18.5){
          // print('Сиз арыксыз:$res');
          return 'Сиз арыксыз';
        }else if(res >= 18.6 && res <=25){
          // print('Сиз нормадасыз:$res');
          return 'Сиз нормадасыз';
        }else if(res >= 25.1 && res <=30){
          // print('Сиз ашыкча салмактуусуз:$res');
         return 'Сиз ашыкча салмактуусуз';
        }else{
          // print('Сиз салмактуусуз:$res');
          return 'Сиз салмактуусуз';
        }
  }

  String bmiDescription(res){
    if(res <= 18.5){
          // print('Сиз арыксыз:$res');
          return 'Сиз арыксыз, тамактануу нормаңызды карап коюуңуз шар';
        }else if(res >= 18.6 && res <=25){
          // print('Сиз нормадасыз:$res');
          return 'Сиздин дене салмагыңыз нормалдуу. Азаматсыз!';
        }else if(res >= 25.1 && res <=30){
          // print('Сиз ашыкча салмактуусуз:$res');
         return 'Сиз ашыкча салмактуу экенсиз, спорт менен алектениңиз';
        }else{
          // print('Сиз салмактуусуз:$res');
          return 'Сиз салмактуусуз, срочно фитнес клубка барыңыз';
        }
  }
}