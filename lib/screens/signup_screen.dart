import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/screens/verification_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/login-logo.png',
                ),
              ),
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Enter your credential to continue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                // height: 55,
                height: MediaQuery.of(context).size.height * 0.07,

                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 218, 218, 218)),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Removes the bottom line
                    hintText: 'Enter Username',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 218, 218, 218)),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Removes the bottom line
                    hintText: 'Enter email',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 218, 218, 218)),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.lock),

                    border: InputBorder.none, // Removes the bottom line
                    hintText: 'Enter Password',
                  ),
                  obscureText: true, // Hides the password text
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "By continuing you agree to our ",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  Text(
                    "Terms of Services",
                    style: TextStyle(fontSize: 14, color: Color(0xff53B175)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Adjust radius as needed
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff53B175)),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
