import 'package:flutter/material.dart';
import 'package:lesson11_piano_app_ui/components/demo_black.dart';
import 'package:lesson11_piano_app_ui/components/demo_white.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold( 
        body: SizedBox(
        width: double.infinity,
        height: 380,
        child: Stack(
          children: [
        ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index){
          return DemoWhiteKey();
        }),
    
    
        // for black buttons
    
         Row(children: const [
          SizedBox(
            width: 65,
          ),
          DemoBlackKey(),
          SizedBox(
            width: 30,
          ),
          DemoBlackKey(),
          SizedBox(
            width: 230,
          ),
          DemoBlackKey(),
          SizedBox(
            width: 30,
          ),
          DemoBlackKey(),
         ],)
        ],
        )
         
      ),
        
      ),
    );
  }
}



