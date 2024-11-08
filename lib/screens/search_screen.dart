import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/providers/cart_provider.dart';
import 'package:grocery_app/screens/custome%20widgets/custome_widgets.dart';
import 'package:grocery_app/screens/product-data.dart';
import 'package:provider/provider.dart';

import '../product-list/beverages_list.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: const Color(0xfff3f3f3),
      isScrollControlled: true, // Allow full screen height

      context: context,
      builder: (BuildContext context) {
        final cartProvider = Provider.of<CartProvider>(context);

        return Container(
          padding: const EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height *
              0.9, // Use a percentage of screen height
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Filters",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[0],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 0);
                      },
                    ),
                    Text(
                      'Eggs',
                      style: TextStyle(
                        fontSize: 16,
                        color: cartProvider.isChecked[0]
                            ? const Color.fromRGBO(83, 177, 117, 5)
                            : Colors.black, // Customize active color
                      ),
                    ),
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[1],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 1);
                      },
                    ),
                    Text(
                      'Noodles & Pasta',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[1]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    )
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[2],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 2);
                      },
                    ),
                    Text('Chips & Crips',
                        style: TextStyle(
                            fontSize: 16,
                            color: cartProvider.isChecked[2]
                                ? const Color.fromRGBO(83, 177, 117, 5)
                                : Colors.black)),
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[3],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 3);
                      },
                    ),
                    Text(
                      'Fast Foods',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[3]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Brand",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[4],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 4);
                      },
                    ),
                    Text(
                      'Individual Collection',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[4]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    ),
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[5],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 5);
                      },
                    ),
                    Text(
                      'Cocola',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[5]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    ),
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[6],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 6);
                      },
                    ),
                    Text(
                      'lfad',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[6]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    ),
                  ]),
                  Row(children: [
                    Checkbox(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: cartProvider.isChecked[7],
                      activeColor: const Color.fromRGBO(
                          83, 177, 117, 5), // Customize active color
                      checkColor: Colors.white, // Customize checkmark color
                      onChanged: (bool? value) {
                        cartProvider.isPressed(value!, 7);
                      },
                    ),
                    Text(
                      'Kazi Farmas',
                      style: TextStyle(
                          fontSize: 16,
                          color: cartProvider.isChecked[7]
                              ? const Color.fromRGBO(83, 177, 117, 5)
                              : Colors.black),
                    ),
                  ]),
                ],
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                // height: 55,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Adjust radius as needed
                    ),
                  ),
                  child: const Text(
                    "Apply Filter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Map<String, String>> filteredList = [];

  TextEditingController searchController = TextEditingController();

  void searchEggs(String query) {
    if (query.isEmpty) {
      // Reset the state to the initial view if search is cleared
      setState(() {
        filteredList.clear();
        // isSearching = false;
      });
      return;
    }

    final results = mainSearchList.where((item) {
      final nameLower = item['name']!.toLowerCase();
      final queryLower = query.toLowerCase();
      return nameLower.contains(queryLower);
    }).toList();

    setState(() {
      filteredList = results;
      // isSearching = true; // Toggle to show search results
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background for the screen
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
            child: Column(children: [
              Row(
                children: [
                  Center(
                    child: Hero(
                      tag: "search Tag",
                      child: Container(
                        height: 60,
                        width: 300,
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          onChanged: searchEggs,
                          controller: searchController,
                          // focusNode: _focusNode
                          autofocus: true,
                          // onChanged: searchEggs,
                          // controller: searchController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'Find Product',
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 25,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showBottomSheet(context);
                    },
                    child: SvgPicture.asset(
                      "assets/images/filter-icon.svg",
                      width: 23,
                      height: 23,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: searchBuilder(
                  filteredList: filteredList,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class searchBuilder extends StatelessWidget {
  final List filteredList;
  const searchBuilder({
    super.key,
    required this.filteredList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: GridView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 containers in every row
            //ecrease this value to reduce space between containers
            mainAxisSpacing: 10.0, // space between rows
            childAspectRatio: 0.75, // aspect ratio of each container
          ),
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            return CustomContainer(
              image: filteredList[index]['link'],
              name: filteredList[index]['name'],
              amount: filteredList[index]['amount'],
              price: filteredList[index]['price'],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductData(
                            name: filteredList[index]["name"],
                            imageUrl: filteredList[index]['link'],
                            amount: filteredList[index]['amount'],
                            price: filteredList[index]['price'])));
              },
              heroTag: 'uniqueTag$index',
              // index: index,
              // listIndex: 1,
            );
          }),
    );
  }
}





















// import 'package:flutter/material.dart';
// import 'package:grocery_app/providers/cart_provider.dart';
// // import 'package:grocery_app/screens/custome%20widgets/custome_widgets.dart';
// import 'package:grocery_app/screens/product-data.dart';
// import 'package:provider/provider.dart';

// import '../product-list/beverages_list.dart';

// class searchScreen extends StatefulWidget {
//   const searchScreen({super.key});

//   @override
//   State<searchScreen> createState() => _searchScreenState();
// }
// List<Map<String, String>> filteredList = [];


// class _searchScreenState extends State<searchScreen> {
//   void _showBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       backgroundColor: const Color(0xfff3f3f3),
//       isScrollControlled: true, // Allow full screen height

//       context: context,
//       builder: (BuildContext context) {
//         final cartProvider = Provider.of<CartProvider>(context);

//         return Container(
//           padding: const EdgeInsets.all(16.0),
//           height: MediaQuery.of(context).size.height *
//               0.9, // Use a percentage of screen height
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Align(
//                     alignment: Alignment.topCenter,
//                     child: Text(
//                       "Filters",
//                       style:
//                           TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   const Text(
//                     "Categories",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[0],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 0);
//                       },
//                     ),
//                     Text(
//                       'Eggs',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: cartProvider.isChecked[0]
//                             ? const Color.fromRGBO(83, 177, 117, 5)
//                             : Colors.black, // Customize active color
//                       ),
//                     ),
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[1],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 1);
//                       },
//                     ),
//                     Text(
//                       'Noodles & Pasta',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[1]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     )
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[2],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 2);
//                       },
//                     ),
//                     Text('Chips & Crips',
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: cartProvider.isChecked[2]
//                                 ? const Color.fromRGBO(83, 177, 117, 5)
//                                 : Colors.black)),
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[3],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 3);
//                       },
//                     ),
//                     Text(
//                       'Fast Foods',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[3]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     ),
//                   ]),
//                 ],
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Brand",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[4],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 4);
//                       },
//                     ),
//                     Text(
//                       'Individual Collection',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[4]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     ),
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[5],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 5);
//                       },
//                     ),
//                     Text(
//                       'Cocola',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[5]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     ),
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[6],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 6);
//                       },
//                     ),
//                     Text(
//                       'lfad',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[6]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     ),
//                   ]),
//                   Row(children: [
//                     Checkbox(
//                       side: const BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5)),
//                       value: cartProvider.isChecked[7],
//                       activeColor: const Color.fromRGBO(
//                           83, 177, 117, 5), // Customize active color
//                       checkColor: Colors.white, // Customize checkmark color
//                       onChanged: (bool? value) {
//                         cartProvider.isPressed(value!, 7);
//                       },
//                     ),
//                     Text(
//                       'Kazi Farmas',
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: cartProvider.isChecked[7]
//                               ? const Color.fromRGBO(83, 177, 117, 5)
//                               : Colors.black),
//                     ),
//                   ]),
//                 ],
//               ),
//               const Expanded(child: SizedBox()),
//               SizedBox(
//                 width: double.infinity,
//                 // height: 55,
//                 height: MediaQuery.of(context).size.height * 0.07,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
//                     shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.circular(15), // Adjust radius as needed
//                     ),
//                   ),
//                   child: const Text(
//                     "Apply Filter",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }


//   TextEditingController searchController = TextEditingController();

//   void searchEggs(String query) {
//     if (query.isEmpty) {
//       // Reset the state to the initial view if search is cleared
//       setState(() {
//         filteredList.clear();
//         // isSearching = false;
//       });
//       return;
//     }

//     final results = mainSearchList.where((item) {
//       final nameLower = item['name']!.toLowerCase();
//       final queryLower = query.toLowerCase();
//       return nameLower.contains(queryLower);
//     }).toList();

//     setState(() {
//       filteredList = results;
//       // isSearching = true; // Toggle to show search results
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // White background for the screen
//       body: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
//             child: Column(children: [
//               Row(
//                 children: [
//                   Center(
//                     child: Hero(
//                       tag: "search Tag",
//                       child: Container(
//                         height: 60,
//                         width: double.infinity,
//                         padding: const EdgeInsets.only(top: 10),
//                         child: TextField(
//                           onChanged: searchEggs,
//                           controller: searchController,
//                           // focusNode: _focusNode
//                           autofocus: true,
//                           // onChanged: searchEggs,
//                           // controller: searchController,
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               labelText: 'Find Product',
//                               prefixIcon: const Icon(
//                                 Icons.search,
//                                 size: 25,
//                               )),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 15),
//                   GestureDetector(
//                     onTap: () {
//                       _showBottomSheet(context);
//                     },
//                     child: Image.asset(
//                       "assets/images/filter-icon.png",
//                       width: 25,
//                       height: 25,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               // // Expanded(
//               // //   child: searchBuilder(
//               // //     filteredList: filteredList,
//               // //   ),
//               // ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // class searchBuilder extends StatelessWidget {
// //   final List filteredList;
// //   const searchBuilder({
// //     super.key,
// //     required this.filteredList,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.only(top: 10, bottom: 10),
// //       child: GridView.builder(
// //           // physics: const NeverScrollableScrollPhysics(),
// //           // shrinkWrap: true,
// //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //             crossAxisCount: 2, // 2 containers in every row
// //             //ecrease this value to reduce space between containers
// //             mainAxisSpacing: 10.0, // space between rows
// //             childAspectRatio: 0.75, // aspect ratio of each container
// //           ),
// //           itemCount: filteredList.length,
// //           itemBuilder: (context, index) {
// //             return CustomContainer(
// //               image: filteredList[index]['link'],
// //               name: filteredList[index]['name'],
// //               amount: filteredList[index]['amount'],
// //               price: filteredList[index]['price'],
// //               onPressed: () {
// //                 Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                         builder: (context) => ProductData(
// //                             name: filteredList[index]["name"],
// //                             imageUrl: filteredList[index]['link'],
// //                             amount: filteredList[index]['amount'],
// //                             price: filteredList[index]['price'])));
// //               },
// //               heroTag: 'uniqueTag$index',
// //               // index: index,
// //               // listIndex: 1,
// //             );
// //           }),
// //     );
// //   }
// // }
