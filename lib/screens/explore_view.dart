import 'package:flutter/material.dart';
import 'package:grocery_app/product-list/beverages_list.dart';
import 'package:grocery_app/product-list/find_product.dart';
import 'package:grocery_app/screens/categories.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Find Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers in each row
                  crossAxisSpacing:
                      10, // No horizontal space between containers
                  mainAxisSpacing: 10, // No vertical space between rows
                  childAspectRatio:
                      0.75, // Aspect ratio of 1:1 for square containers
                ),
                itemCount: findProduct.length, // Number of containers
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                      list: eggsList,
                                    )));
                      } else if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                      list: beveragesList,
                                    )));
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 5),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                              // height: 20,
                              ),
                          Image.asset(findProduct[index]["link"]),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            findProduct[index]["name"],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),

              // ListView.builder(
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: 3,
              //   itemBuilder: (BuildContext context, int index) {
              //     // Generate a row containing two containers
              //     int firstIndex = index * 2;
              //     int secondIndex = firstIndex + 1;
              //     return Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         InkWell(
              //           onTap: () {
              //             print(firstIndex);
              //             if (firstIndex == 4) {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => const SearchScreen()));
              //             }
              //           },
              //           child: Container(
              //             padding: const EdgeInsets.only(top: 5),
              //             margin: const EdgeInsets.only(
              //               top: 5,
              //               left: 5,
              //               bottom: 5,
              //               right: 5,
              //             ),
              //             width: 165,
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: const Color.fromRGBO(238, 247, 241, 5),
              //                 borderRadius: BorderRadius.circular(20),
              //                 border: Border.all(
              //                   color: const Color.fromRGBO(164, 213, 181, 5),
              //                 )),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 const SizedBox(
              //                     // height: 20,
              //                     ),
              //                 Image.asset(findProduct[firstIndex]["link"]),
              //                 const SizedBox(
              //                   height: 10,
              //                 ),
              //                 Text(
              //                   findProduct[firstIndex]["name"],
              //                   style: const TextStyle(
              //                       fontSize: 18, fontWeight: FontWeight.bold),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //         InkWell(
              //           onTap: () {
              //             print(secondIndex);
              //             if (secondIndex == 5) {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => const Beverages()));
              //             }
              //           },
              //           child: Container(
              //             padding: const EdgeInsets.only(top: 5),
              //             margin: const EdgeInsets.only(
              //               top: 5,
              //               left: 5,
              //               bottom: 5,
              //               right: 5,
              //             ),
              //             width: 165,
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: const Color.fromRGBO(238, 247, 241, 5),
              //                 borderRadius: BorderRadius.circular(20),
              //                 border: Border.all(
              //                   color: const Color.fromRGBO(164, 213, 181, 5),
              //                 )),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 const SizedBox(
              //                     // height: 20,
              //                     ),
              //                 Image.asset(findProduct.length > secondIndex
              //                     ? findProduct[secondIndex]["link"]
              //                     : ''),
              //                 const SizedBox(
              //                   height: 10,
              //                 ),
              //                 Text(
              //                   findProduct.length > secondIndex
              //                       ? findProduct[secondIndex]["name"]
              //                       : '',
              //                   style: const TextStyle(
              //                       fontSize: 18, fontWeight: FontWeight.bold),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
