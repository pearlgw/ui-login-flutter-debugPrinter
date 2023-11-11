import 'package:flutter/material.dart';
import 'package:ui_login1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Login',
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: LoginPage(),
    );
  }
}