import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/custome_widgets.dart';
import 'package:grocery_app/product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exclusiveProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomContainer(
                      image: exclusiveProduct[index]['link'],
                      name: exclusiveProduct[index]['name'],
                      amount: exclusiveProduct[index]['amount'],
                      price: exclusiveProduct[index]['price'],
                      index: index,
                    );
                  }),
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
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: BestSellProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomContainer(
                      image: BestSellProduct[index]['link'],
                      name: BestSellProduct[index]['name'],
                      amount: BestSellProduct[index]['amount'],
                      price: BestSellProduct[index]['price'],
                      index: index,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: GroceryProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomContainer(
                      image: GroceryProduct[index]['link'],
                      name: GroceryProduct[index]['name'],
                      amount: GroceryProduct[index]['amount'],
                      price: GroceryProduct[index]['price'],
                      index: index,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
