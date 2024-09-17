import 'package:flutter/material.dart';
import 'package:grocery_app/product-list/product_list.dart';
import 'package:grocery_app/screens/custome%20widgets/custome_widgets.dart';

import 'custome widgets/home_slider.dart';
import 'product-data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<int> list =
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/images/home_logo.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/location.png'),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  "Dhaka, Banassre",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            )
          ],
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 340,
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  // focusNode: _focusNode,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Search Store',
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              HomeSlider(
                  currentSlider: currentSlider,
                  onChange: (val) {
                    setState(() {
                      currentSlider = val;
                    });
                  }),

              // Image.asset(
              //   'assets/images/banner.jpg',
              //   width: 320,
              // ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                      left: 20,
                    ),
                    child: const Text(
                      "Exclusive Offer",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 20, bottom: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style:
                              TextStyle(color: Color.fromRGBO(83, 177, 117, 5)),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product[0].length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomContainer(
                        image: product[0][index]['link'],
                        name: product[0][index]['name'],
                        amount: product[0][index]['amount'],
                        price: product[0][index]['price'],
                        // index: index,
                        // listIndex: 0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductData(
                                        name: product[0][index]["name"],
                                        // imageUrl: product[listIndex][index]["url"],

                                        imageUrl: product[0][index]['link'],
                                          amount: product[0][index]['amount'],
                                      price: product[0][index]['price']
                                      )));
                        }, heroTag: 'uniqueTag$index',
                      );
                    }),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    child: const Text(
                      "Best Selling",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 5, right: 20, bottom: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style:
                              TextStyle(color: Color.fromRGBO(83, 177, 117, 5)),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product[1].length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomContainer(
                        image: product[1][index]['link'],
                        name: product[1][index]['name'],
                        amount: product[1][index]['amount'],
                        price: product[1][index]['price'],
                        // index: index,
                        // listIndex: 1,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductData(
                                        name: product[1][index]["name"],
                                        // imageUrl: product[listIndex][index]["url"],

                                        imageUrl: product[1][index]['link'],
                                          amount: product[1][index]['amount'],
                                      price: product[1][index]['price']
                                      )));
                        }, heroTag:  'uniqueTag1$index',
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, bottom: 5),
                    child: const Text(
                      "Grocery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 5, right: 20, bottom: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style:
                              TextStyle(color: Color.fromRGBO(83, 177, 117, 5)),
                        ),
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          bottom: 5,
                          right: 5,
                        ),
                        width: 250,
                        height: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(254, 241, 228, 5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/images/spices.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Pulses",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 5,
                          left: 5,
                          bottom: 5,
                          right: 5,
                        ),
                        width: 250,
                        height: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(229, 243, 234, 5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/images/rice.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Rice",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product[2].length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomContainer(
                        image: product[2][index]['link'],
                        name: product[2][index]['name'],
                        amount: product[2][index]['amount'],
                        price: product[2][index]['price'],
                        // index: index,
                        // listIndex: 2,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductData(
                                        name: product[2][index]["name"],
                                        // imageUrl: product[listIndex][index]["url"],

                                        imageUrl: product[2][index]['link'],
                                        amount: product[2][index]['amount'],
                                        price:  product[2][index]['price'],
                                      )));
                        }, heroTag:  'uniqueTag2$index',
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
