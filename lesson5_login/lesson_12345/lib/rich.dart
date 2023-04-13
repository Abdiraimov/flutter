import 'package:flutter/material.dart';
import 'package:lesson_12345/home.dart';

void main() {
  runApp(const Rich(Text: '',));
}

class Rich extends StatelessWidget {
  
  
  // ignore: non_constant_identifier_names
  const Rich({super.key, required String Text});
  
  
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
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.black,),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
    },
  ),
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