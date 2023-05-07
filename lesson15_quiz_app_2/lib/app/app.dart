import 'package:flutter/material.dart';

import 'package:lesson15_quiz_app_2/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}