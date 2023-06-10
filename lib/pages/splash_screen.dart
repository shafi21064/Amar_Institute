import 'dart:async';

import 'package:amar_institute/pages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    bool isLogin = sp.getBool('login') ?? false;

    if (isLogin) {
      Timer(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    } else {
      Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splash.png')
        ),
      ),
    );
  }
}
