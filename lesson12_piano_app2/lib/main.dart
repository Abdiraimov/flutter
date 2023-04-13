import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const DemoScreen(),
    );
  }
}



class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Piano'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/do.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/re.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/mi.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/fa.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/sol.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/lya.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('audio/si.wav'));
              },
              child: Container(
                height: 120,
                width: 60,
                color: Colors.white,
              ),
            ),
            ],)
              
          ],
        ),
      ),
    );
  }
}