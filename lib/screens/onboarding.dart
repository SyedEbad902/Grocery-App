import 'package:flutter/material.dart';
import 'package:grocery_app/screens/gnav_bar.dart';

// ignore: camel_case_types
class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First widget in the stack is the background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding.jpg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity, // Cover the whole screen
            ),
          ),
          Positioned(
            bottom: 280,
            left: 170,
            child: Image.asset('assets/images/onboarding-logo.jpg'),
          ),
          Positioned(
            left: 60,
            bottom: 170,
            child: Image.asset('assets/images/Welcome to our store.png'),
          ),
          Positioned(
            left: 35,
            bottom: 140,
            child: Image.asset('assets/images/baseline.png'),
          ),
          Positioned(
            left: 35,
            bottom: 70,
            child: SizedBox(
              width: 300,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleNavBar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15), // Adjust radius as needed
                  ),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
