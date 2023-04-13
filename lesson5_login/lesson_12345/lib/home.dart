import 'package:flutter/material.dart';
import 'package:lesson_12345/rich.dart';



class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive=false;
  
  String? phoneNumber;
  String? email;
  void ishtoo(){
    if(phoneNumber !=null && email !=null){
      if(phoneNumber!.isEmpty || email!.isEmpty){
        isActive = false;
      } else{
        isActive = true;
      }
      setState(() {
        
      });
    }
  }
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
            SizedBox(
            width: 200,
            height: 200,
            child: Image.network("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-fanexpo/events/A.png"),
          ),
            const Text("Kubanychbek Abdiraimov",
            style: TextStyle(fontSize: 48, fontFamily: 'Pacifico', color: Colors.white),
            ),
          const Text("Flutter Developer", 
          style: TextStyle(fontSize: 28, color: Colors.white, fontFamily: 'Roboto', decoration: TextDecoration.underline,),
          ),
          

          const SizedBox(height: 20,),
          Container(
            color: Colors.white,
           child: TextFormField(
            
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff056c5c), 
              fontWeight: FontWeight.w600),
            onChanged: (String? value) {
              phoneNumber=value;
              ishtoo();
              print("value: $value");
              print("phoneNumber: $phoneNumber");
              
            },
            decoration: const InputDecoration(
              focusColor: Colors.white,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Icon(Icons.call, color: Color(0xff056c5c)
                ),
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
            onChanged: (String? value) {
              email=value;
              ishtoo();
              print("value: $value");
              print("email: $email");
              
            },
            decoration: const InputDecoration(
              focusColor: Colors.white,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Icon(Icons.email, color: Color(0xff056c5c)
                ),
              ),
            ),
              ),
            ),
            const SizedBox(height: 20
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.white),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15)
              ),
              onPressed: isActive ? (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Rich(Text: '',)));
              }:null, 
              child: const Text("Start"),
              )
        ],),
      ),
    );
  }
}