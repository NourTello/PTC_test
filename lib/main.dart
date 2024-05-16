import 'package:flutter/material.dart';
import 'package:ptc_test/core/themes/light-theme.dart';
import 'package:ptc_test/features/welcome/presentation/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home:WelcomeScreen()
    );
  }
}


