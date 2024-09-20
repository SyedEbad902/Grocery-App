import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/verification_screen.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerificationScreen()));
            },
            shape: const CircleBorder(),
            backgroundColor: const Color(0xff53B175),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
          backgroundColor: Colors.white,
          body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                          // Aligns the icon to the center of the image
                          children: <Widget>[
                            // Image widget
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/mask-group.png',
                                  // height: 400,
                                  // width: 400,
                                )),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.infinity,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(
                                        0.7), // Slight opacity for the glass
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.2),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 10,
                                          sigmaY: 10), // Blur effect
                                      child: Container(
                                        alignment: Alignment.center,
                                        color: Colors.white.withOpacity(
                                            0.1), // Frosted glass color
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Icon widget
                            Container(
                              padding: const EdgeInsets.only(top: 50, left: 15),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 25.0, // Size of the icon
                              ),
                            ),
                          ]),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 15),
                        child: Text(
                          "Enter your mobile number",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          " Email or Mobile Number",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 85, 84, 84)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 10, right: 15),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 219, 217, 217)),
                                borderRadius: BorderRadius.circular(15)),
                            child: const TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: InputBorder
                                      .none, // Removes the bottom line
                                  hintText: 'Enter Email or Phone Number',
                                  hintStyle: TextStyle(
                                      fontSize: 16, color: Colors.grey)),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ))),
    );
  }
}
