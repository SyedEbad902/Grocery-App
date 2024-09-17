import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final cartProvider = Provider.of<CartProvider>(context);
    // final favProvider = Provider.of<FavoriteProvider>(context);

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
                child: Consumer<CartProvider>(
                    builder: (context, cartProvider, child) {
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 0,
                        thickness: 1,
                        color: Colors.black,
                      );
                    },
                    itemBuilder: (context, index) {
                      if (index == cartProvider.cartList.length) {
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
                                    cartProvider.cartList[index]["link"]),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    cartProvider.cartList[index]["name"],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    cartProvider.cartList[index]["amount"],
                                    style: const TextStyle(
                                        fontSize: 14, color: Color(0xff7C7C7C)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cartProvider.decrementQuantity(
                                              cartProvider.cartList[index]
                                                  ["name"]);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              // color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          margin: const EdgeInsets.only(
                                              left: 0, top: 5),
                                          child: const Icon(
                                            Icons.remove,
                                            size: 25,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                          height: 40,
                                          width: 43,
                                          child: Center(
                                            child: Center(
                                                child: Text(
                                              "${cartProvider.getQuantity(cartProvider.cartList[index]["name"])}",
                                              // cartProvider
                                              //     .getQuantity(name)
                                              //     .toString(),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          )),
                                      GestureDetector(
                                        onTap: () {
                                          cartProvider.incrementQuantity(
                                              cartProvider.cartList[index]
                                                  ["name"]);
                                        },
                                        child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                // color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            child: const Icon(
                                              Icons.add,
                                              size: 25,
                                              color: Colors.green,
                                            )),
                                      )
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
                                      onTap: () {
                                      String name =cartProvider.cartList[index]["name"];
                                        cartProvider.removeItem(index, name);
                                        print(cartProvider.cartList);
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                    ),
                                    Text(
                                      cartProvider.cartList[index]["price"],
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
                    itemCount: cartProvider.cartList.isEmpty
                        ? cartProvider.cartList.length
                        : cartProvider.cartList.length +
                            1, // Add 1 to item count
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
