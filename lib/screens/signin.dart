import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              // height: 700,
              width: double.infinity,
              child: Image.asset(
                'assets/images/mask-group.png',
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Get your groceries\nwith nectar",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
           CountryCodePicker(
         onChanged: print,
         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
         initialSelection: 'IT',
         favorite: ['+39','FR'],
         // optional. Shows only country name and flag
         showCountryOnly: false,
         // optional. Shows only country name and flag when popup is closed.
         showOnlyCountryWhenClosed: false,
         // optional. aligns the flag and the Text left
         alignLeft: false,
       ),
       
      
        ],
      ),
    );
  }
}
