// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ProductData extends StatelessWidget {
  final name;
  final imageUrl;
  const ProductData({super.key, this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20),
            height: 370,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(242, 243, 242, 5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 10),
                                child:
                                    Image.asset("assets/images/upload.png"))),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Image.asset(imageUrl)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.only(right: 10, top: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined)),
              )
            ],
          ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                "1kg , price",
                style: TextStyle(fontSize: 16),
              )),
        ],
      )),
    );
  }
}
