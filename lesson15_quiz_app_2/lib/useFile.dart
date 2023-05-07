import 'package:lesson15_quiz_app_2/model.dart';

class UseQuiz{
  int index = 0;
  List<QuizModel> surooJoop = [
    QuizModel(suroo: 'Кыргызстанда 7 облус барбы?', joop: true),
    QuizModel(suroo: 'Сулайман-Тоо Баткендеби?', joop: false),
    QuizModel(suroo: 'Чымчык бийиктке уча алабы?', joop: true),
    QuizModel(suroo: 'Google компаниясынын штаб квартирасы Кыргызстандабы? ', joop: false),
    QuizModel(suroo: 'Балык сууда жашайбы?', joop: true),
  ];

  String surooAluu(){
    return surooJoop[index].suroo;
  }
  bool joopAluu(){
    return surooJoop[index].joop;
  }

  void nextQuestion(){
    if(index<= surooJoop.length){
      index++;

    }
    }

    bool isFinished(){
      if(surooJoop[index]==surooJoop.last){
        return true;
      }
      else{
        return false;
      }
    }

    void indexZero(){
      index = 0;
    }
  }