import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        shadowColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        title: const Text(
          "My Cart",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Divider(
              height: 0,
              thickness: 1,
              color: Colors.black,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    if (index == favProvider.cartList.length) {
                      // After the last item, return a divider
                      return const Divider(
                        height: 0,
                        thickness: 1,
                        color: Colors.black,
                      );
                    }

                    return SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 50,
                              child: Image.asset(
                                  favProvider.cartList[index]["link"]),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  favProvider.cartList[index]["name"],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  favProvider.cartList[index]["amount"],
                                  style: const TextStyle(
                                      fontSize: 14, color: Color(0xff7C7C7C)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 5),
                                      child: Icon(
                                        Icons.remove,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 40,
                                        width: 43,
                                        child: Center(
                                          child: Center(
                                              child: Text(
                                            "0",
                                            // cartProvider
                                            //     .getQuantity(name)
                                            //     .toString(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        )),
                                    Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            // color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        margin: const EdgeInsets.only(top: 5),
                                        child: const Icon(
                                          Icons.add,
                                          size: 25,
                                          color: Colors.green,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.grey,
                                      size: 25,
                                    ),
                                  ),
                                  Text(
                                    favProvider.cartList[index]["price"],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: favProvider.cartList.isEmpty
                      ? favProvider.cartList.length
                      : favProvider.cartList.length + 1, // Add 1 to item count
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
