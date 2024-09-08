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
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(242, 243, 242, 5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
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
                              onTap: () {},
                              child: Container(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 10),
                                  child:
                                      Image.asset("assets/images/upload.png"))),
                        ]),
                    // const SizedBox(
                    //   height,
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Hero(
                            tag: imageUrl,
                            child: Image.asset(
                              imageUrl,
                              height: 200,
                              width: 200,
                            )),
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
                          fontSize: 23, fontWeight: FontWeight.bold),
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
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, top: 5),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              size: 20,
                            ))),
                    SizedBox(
                        height: 40,
                        width: 43,
                        child: Center(
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text(
                    "\$4.99",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Divider(
              color: Colors.grey, // Customize color if needed
              thickness: 1.0, // Customize thickness if needed
              height: 35.0, // Customize height if needed
              indent: 15.0, // Customize left indent if needed
              endIndent: 15.0, // Customize right indent if needed
            ),
            Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Product Details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Savor the juicy sweetness of this vibrant fruit, a refreshing burst of flavor that invigorates the senses and delights the palate with every bite.',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )),
            const Divider(
              color: Colors.grey, // Customize color if needed
              thickness: 1.0, // Customize thickness if needed
              height: 23.0, // Customize height if needed
              indent: 15.0, // Customize left indent if needed
              endIndent: 15.0, // Customize right indent if needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Nutritions',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(235, 235, 235, 5)),
                        child: const Text(
                          '100g',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.grey, // Customize color if needed
              thickness: 1.0, // Customize thickness if needed
              height: 10.0, // Customize height if needed
              indent: 15.0, // Customize left indent if needed
              endIndent: 15.0, // Customize right indent if needed
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Review',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(243, 96, 63, 5),
                      size: 20,
                    ),
                    const Icon(Icons.star,
                        color: Color.fromRGBO(243, 96, 63, 5), size: 20),
                    const Icon(Icons.star,
                        color: Color.fromRGBO(243, 96, 63, 5), size: 20),
                    const Icon(Icons.star,
                        color: Color.fromRGBO(243, 96, 63, 5), size: 20),
                    const Icon(Icons.star,
                        color: Color.fromRGBO(243, 96, 63, 5), size: 20),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.navigate_next))
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Adjust radius as needed
                    ),
                  ),
                  child: const Text(
                    "Add to Basket",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
