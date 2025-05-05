import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/login/login_screen.dart';

// import 'package:flutter_application_2/screen/calculator/calculator_lesson_1.dart';
// import 'package:flutter_application_2/screen/bottom_tabber/bottom_tabber_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
