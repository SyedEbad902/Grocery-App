import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final image;
  final name;
  final amount;
  final price;
  const CustomContainer(
      {super.key,
      required this.image,
      required this.name,
      required this.amount,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 220,
      width: 160,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, child: Image.asset(image)),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Text(
              name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40),
            child: Text(
              amount,
              style: TextStyle(
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                padding: const EdgeInsets.only(right: 10, bottom: 5),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
