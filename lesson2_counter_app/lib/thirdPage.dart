import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.count});
final int count;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // удаление дебага
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
            backgroundColor: Colors.yellow,
      appBar: AppBar(
        // кнопка возврата
       leading: GestureDetector(child: 
       const BackButton(color: Colors.black,),
       onTap: () {
         Navigator.pop(context);
       },
       ),
        //////////////////////////
        backgroundColor: Colors.yellow,
        title: const Center(
        child:  Text(
          'Тапшырма 3', 
        style: TextStyle(color: Colors.black),
        ),
        ),   
        ),   
        body: Center(
        child: Column(
          // центр компонента
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           const Text('I\'m Rich', 
           style: TextStyle(
            fontSize: 48, fontFamily: 'Sofia-Regular'
            ),
           ),
           //размер картинки
           SizedBox(
            width: 200, 
            height: 200,
            child:  Image.asset(
              "assets/images/diamond.png",
              )
            ),
           ],
        ),        
        ),
      );
  }
}