import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(),
      title: 'Clean Architecture TDD',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
