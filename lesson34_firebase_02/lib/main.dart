import 'package:flutter/material.dart';
import 'package:lesson34_firebase_02/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/*
1. Connecting Firebase to flutter project;
2. Create Database;
3. send data, using 4 main functions(create, read, update, delete) to Database 
*/

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

