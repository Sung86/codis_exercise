import 'package:flutter/material.dart';
import 'package:codis_exercise/pages/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Codis.io Exercise - Sung',
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}
