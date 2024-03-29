import 'package:e_commerce/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
