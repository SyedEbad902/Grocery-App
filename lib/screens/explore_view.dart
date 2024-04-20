import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_list.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Find Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
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
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                // Generate a row containing two containers
                int firstIndex = index * 2;
                int secondIndex = firstIndex + 1;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        width: 165,
                        height: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 247, 241, 5),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromRGBO(164, 213, 181, 5),
                            )),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(findProduct[firstIndex]["link"]),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              findProduct[firstIndex]["name"],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
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
                        width: 165,
                        height: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 247, 241, 5),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromRGBO(164, 213, 181, 5),
                            )),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(findProduct.length > secondIndex
                                ? findProduct[secondIndex]["link"]
                                : ''),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              findProduct.length > secondIndex
                                  ? findProduct[secondIndex]["name"]
                                  : '',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
