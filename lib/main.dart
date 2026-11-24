import 'package:flutter/material.dart';
import 'screen_two.dart';

void main() {
  runApp(const SocialFlowApp());
}

class SocialFlowApp extends StatelessWidget {
  const SocialFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SocialFlow',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          surface: Colors.white,
        ),
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: ScreenTwo(),
    );
  }
}
