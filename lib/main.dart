import 'package:amar_institute/pages/log_in.dart';
import 'package:amar_institute/pages/sign_up.dart';
import 'package:amar_institute/pages/welcome.dart';
import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Amar Institute",
      home: WelcomePage(),
    );
  }
}

