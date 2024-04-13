import 'package:flutter/material.dart';
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
      'price': "s499"
    },
    {
      'name': "Red Apple",
      'amount': "1 kg, Priceg",
      "link": "assets/images/apple.png",
      'price': "s499"
    }
  ];
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Container(
            width: 345,
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              obscureText: true,
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
          Container(
            margin: const EdgeInsets.only(right: 80),
            padding: const EdgeInsets.only(right: 80),
            child: const Text(
              "Exclusive Offer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
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
          )
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
    );
  }
}
