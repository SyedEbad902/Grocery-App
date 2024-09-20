import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.43,
                // height: 700,
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset(
                  'assets/images/mask-group.png',
                )),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Get your groceries\nwith nectar",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 219, 217, 217)),
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  children: [
                    CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'PK',
                      dialogSize: Size(70, 400),
                      favorite: ['+92', 'PAK'],
                      textOverflow: TextOverflow.clip,
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none, // Removes the bottom line
                        hintText: 'Enter text',
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("or connect with social media"),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 60,
                      width: 300,
                      child: SignInButtonBuilder(
                        text: 'Continue with Google',
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        image: Image.asset(
                          'assets/images/google.png',
                          height: 30,
                          width: 30,
                        ),
                        onPressed: () {},
                        backgroundColor: const Color(0xff5383EC),
                      )
                      // SignInButton(
                      //   text: "Continue with Google",
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15)),
                      //   Buttons.google,
                      //   onPressed: () {},
                      // ),
                      ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: SignInButton(
                      text: "Continue with Facebook",
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      Buttons.facebook,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
