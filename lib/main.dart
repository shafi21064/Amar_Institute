import 'package:amar_institute/pages/home.dart';
import 'package:amar_institute/pages/home_test.dart';
import 'package:amar_institute/pages/log_in.dart';
import 'package:amar_institute/pages/sign_up.dart';
import 'package:amar_institute/pages/splash_screen.dart';
import 'package:amar_institute/pages/user_type_select.dart';
import 'package:amar_institute/pages/welcome.dart';
import 'package:amar_institute/pages/your_result.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Amar Institute",
      home: UserTypeScreen(),

      // routes:  {
      //   '/' : (context) => const SplashScreen(),
      //   '/home': (context) => const HomePage(),
      //   '/login' : (context) => const LogInPage(),
      //   '/signup' : (context) => const SignUpPage(),
      // },
    );
  }
}

