// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final image;
  final name;
  final amount;
  final price;
  // final index;
  // final listIndex;
  final void Function()? onPressed;
  const CustomContainer(
      {super.key,
      required this.image,
      required this.name,
      required this.amount,
      required this.price,
      // this.index,
      // this.listIndex,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 220,
      // height: size.height * 0.5,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.white,
              offset: Offset(0, 3),
              blurRadius: 7,
              spreadRadius: 4),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 100,
              child: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: 100,
                  ))),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Text(
              name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              amount,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                padding: const EdgeInsets.only(right: 10, bottom: 5),
                child: FloatingActionButton(
                  backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                  onPressed: onPressed,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
