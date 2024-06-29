import 'package:flutter/material.dart';
import 'package:secured_line/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secured Line',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 10,
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Color.fromARGB(255, 94, 162, 196),
              titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ))),
      home: const HomeScreen(),
    );
  }
}
