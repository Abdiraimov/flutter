import 'package:flutter/material.dart';
import 'package:lesson18_bmi_continue2/example.dart';
import 'package:lesson18_bmi_continue2/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}