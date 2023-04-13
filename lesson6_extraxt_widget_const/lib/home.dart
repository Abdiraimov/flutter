import 'package:flutter/material.dart';
import 'package:lesson6_extraxt_widget_const/components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Components and constants"),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://assets-global.website-files.com/6270e8022b05abb840d27d6f/6308d1ab615e60c9047c9d06_AppDev_Flutter-tools.png",
            width: 400,),
             const CustomButton(
              icon: Icons.phone, 
              text: 'My phone',),
            const SizedBox(
              height: 10,),
             const CustomButton(
              icon: Icons.email,
              text: "My email",),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

