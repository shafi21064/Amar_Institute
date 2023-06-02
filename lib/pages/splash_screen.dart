import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: NetworkImage(
            'https://vectorforfree.com/wp-content/uploads/2020/05/Reading_Book_VectorForFree.jpg'),
      ),
    );
  }
}
