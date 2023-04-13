import 'package:flutter/material.dart';
import 'package:lesson10_for_loop/home/user_page.dart';
import 'package:lesson10_for_loop/model.dart';
final students = <Student>[daniyar, dinara, khanzada, begaly];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _gmail;
  void controllNameEmail (String name, String email){
    int index = 0;
for (final student in students){index++;
  if(name == student.name && email == student.email){
    
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=>  UserPage(student: student.name,),
    ),
    );
    break;
  }
  else {
    if(index == students.length){
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Сиздин атыныз же почтаныз туура эмес!"),
      )
      );
    }
    else{
      continue;
    }
    
  }
}
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page".toUpperCase()),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://vsegda-pomnim.com/uploads/posts/2022-04/1649118265_37-vsegda-pomnim-com-p-priroda-vertikalnie-foto-46.jpg'),
          )
          ),
          
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 35,
              top:  40,
              bottom: 40,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(97, 157, 247, 0.608).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                ),
              
              width: double.infinity,
              height: double.infinity,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  FlutterLogo(
                  size: 80,
                ),
                Text('Flutter'),
                ],
                ),            
                const Text('Welcome to Saifty!', 
                style: TextStyle(
                  fontSize: 25, 
                  fontWeight: FontWeight.w500),
                ),
                const Text('Keep your data safe'),
                 Padding(
                  padding:  const EdgeInsets.only(
                    left: 15, right: 15, top: 15),
                  child:  TextField(
                     onChanged: (String value){
                      _name = value;
                    print("Value is work $value");
                    print("Value is work $_name");
                  },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        
                    ),
                      labelText: 'Name',
                    ),
                  ),
                ),
                 Padding(
                  padding:  const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child:  TextField( 
                    onChanged: (String value){
                      _gmail = value;
                    print("Value dont't work $value");
                    print("Value dont't work $_gmail");
                  },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        
                    ),
                    labelText: 'Gmail',
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                const Text(
                  'Forgot Password', style: TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: const Size(150, 50)),
                    onPressed: (){
                      controllNameEmail(_name!, _gmail!);
                    }, 
                    child: const Text('Login')
                    ),
              ],
            ),
            ),
          ), 
          
        ),
      ),
    );
  }
}