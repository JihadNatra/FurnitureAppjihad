import 'package:flutter/material.dart';
import 'page/login.dart'; // import halaman

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // halaman pertama dibuka
    );
  }
}
