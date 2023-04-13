import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child:  Text("Тапшырма 4", 
          style: TextStyle(
            color: Colors.black, fontSize: 18
            ),),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Kubanychbek Abdiraimov",
            style: TextStyle(fontSize: 48, fontFamily: 'Pacifico', color: Colors.white),
            ),
          const Text("Flutter Developer", 
          style: TextStyle(fontSize: 28, color: Colors.white, decoration: TextDecoration.underline,),
          ),

          const SizedBox(height: 20,),
          Container(
            color: Colors.white,
           child: TextFormField(
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff056c5c), 
              fontWeight: FontWeight.w600),
            onChanged: (value){},
            decoration: const InputDecoration(
              focusColor: Colors.white,
              prefixIcon: Icon(Icons.call, color: Color(0xff056c5c)
              ),
            ),
              ),
            ),
        
            const SizedBox(height: 24,),

            Container(
            color: Colors.white,
           child: TextFormField(
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff056c5c), 
              fontWeight: FontWeight.w600),
            onChanged: (value){},
            decoration: const InputDecoration(
              focusColor: Colors.white,
              prefixIcon: Icon(Icons.email, color: Color(0xff056c5c)
              ),
            ),
              ),
            ),
        ],),
      ),
    );
  }
}