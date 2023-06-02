import 'dart:async';

import 'package:amar_institute/pages/log_in.dart';
import 'package:flutter/material.dart';

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
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://vectorforfree.com/wp-content/uploads/2020/05/Reading_Book_VectorForFree.jpg'),
        ),
      ),
    );
  }
}
