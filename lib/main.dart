import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gpn_test/view/login_view.dart';
import 'package:gpn_test/view/splash_screen.dart';
import 'package:gpn_test/view/weather_view.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPN_Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  const WeatherView(),
    );
  }
}

