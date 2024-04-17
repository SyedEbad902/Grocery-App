import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const onboarding()));
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
              height: 170,
              width: 170,
              child: Image.asset('assets/images/Group 1.png'),
            ),
          ),
        ),
      ),
    );
  }
}
