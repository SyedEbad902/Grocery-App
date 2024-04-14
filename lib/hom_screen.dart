import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/custome_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List std = [
    {
      'name': "Organic Banana",
      'amount': "7 Pcs, Priceg",
      "link": "assets/images/banana.png",
      'price': "Rs499"
    },
    {
      'name': "Red Apple",
      'amount': "1 kg, Priceg",
      "link": "assets/images/apple.png",
      'price': "Rs499"
    },
    {
      'name': "Bell Pepper Red",
      'amount': "1 kg, Priceg",
      "link": "assets/images/Bell-pepper.png",
      'price': "Rs499"
    },
    {
      'name': "Ginger",
      'amount': "250gm, Priceg",
      "link": "assets/images/ginger.png",
      'price': "s499"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        backgroundColor: Colors.white,
        color: Colors.black,
        activeColor: Color.fromRGBO(83, 177, 117, 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        iconSize: 25,
        gap: 5,
        duration: Duration(milliseconds: 900),
        tabs: [
          GButton(icon: Icons.shop_2_outlined, text: "Shop"),
          GButton(icon: Icons.explore_outlined, text: "Explore"),
          GButton(icon: Icons.shopping_cart_outlined, text: "Cart"),
          GButton(icon: Icons.favorite_outline, text: "Favroite"),
          GButton(icon: Icons.login, text: "Account"),
        ],
      ),
      appBar: AppBar(
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
        child: Column(
          children: [
            Container(
              width: 345,
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: TextField(
                // focusNode: _focusNode,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
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
            Image.asset(
              'assets/images/banner.jpg',
              width: 320,
            ),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(right: 20, bottom: 10),
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Color.fromRGBO(83, 177, 117, 5)),
                    )),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                      image: std[0]['link'],
                      name: std[0]['name'],
                      amount: std[0]['amount'],
                      price: std[0]['price']),
                  CustomContainer(
                      image: std[1]['link'],
                      name: std[1]['name'],
                      amount: std[1]['amount'],
                      price: std[1]['price']),
                  CustomContainer(
                      image: std[1]['link'],
                      name: std[1]['name'],
                      amount: std[1]['amount'],
                      price: std[1]['price']),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: const Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding:
                        const EdgeInsets.only(top: 10, right: 20, bottom: 10),
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Color.fromRGBO(83, 177, 117, 5)),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                      image: std[2]['link'],
                      name: std[2]['name'],
                      amount: std[2]['amount'],
                      price: std[2]['price']),
                  CustomContainer(
                      image: std[3]['link'],
                      name: std[3]['name'],
                      amount: std[3]['amount'],
                      price: std[3]['price']),
                ],
              ),
            ),

            // ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemCount: std.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: 220,
            //         width: 160,
            //         decoration: BoxDecoration(
            //             border: Border.all(color: Colors.black),
            //             borderRadius: BorderRadius.circular(20)),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Container(
            //                 height: 100, child: Image.asset(std[0]["link"])),
            //             Padding(
            //               padding: const EdgeInsets.only(
            //                 right: 20,
            //               ),
            //               child: Text(
            //                 std[0]["name"],
            //                 style: const TextStyle(
            //                     fontSize: 17, fontWeight: FontWeight.bold),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(right: 40),
            //               child: Text(
            //                 std[0]["amount"],
            //                 style: const TextStyle(
            //                   fontSize: 13,
            //                 ),
            //               ),
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Container(
            //                   padding: const EdgeInsets.only(left: 10),
            //                   child: Text(
            //                     std[0]["price"],
            //                     style:
            //                         const TextStyle(fontWeight: FontWeight.bold),
            //                   ),
            //                 ),
            //                 Container(
            //                   height: 50,
            //                   width: 60,
            //                   padding:
            //                       const EdgeInsets.only(right: 10, bottom: 5),
            //                   child: FloatingActionButton(
            //                     onPressed: () {},
            //                     child: const Icon(Icons.add),
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       );
            //     }),
          ],
        ),
      ),
    );
  }
}
