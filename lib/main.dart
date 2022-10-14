import 'package:flutter/material.dart';
import 'package:insta_clone/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(
          0xff16213E,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        fontFamily: "Avany",
      ),
      home: const HomePage(),
    );
  }
}
