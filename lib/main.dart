import 'package:flutter/material.dart';
import 'package:restaurapp/screens/auth/login_page.dart';
import 'package:restaurapp/themes/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RestaurApp',
      theme: mainTheme,
      home: LoginPage(),
    );
  }
}
