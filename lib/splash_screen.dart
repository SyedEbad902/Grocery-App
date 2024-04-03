import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 120), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const homeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromRGBO(83, 177, 117, 5),
          child: Center(
            child: SizedBox(
              height: 155,
              width: 155,
              child: Image.asset('assets/images/Group 1.png'),
            ),
          ),
        ),
      ),
    );
  }
}
