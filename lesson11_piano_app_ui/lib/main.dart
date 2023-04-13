import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson11_piano_app_ui/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
