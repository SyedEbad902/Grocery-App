import 'package:flutter/material.dart';
import 'package:grocery_app/product-list/beverages_list.dart';
import 'package:grocery_app/product-list/find_product.dart';
import 'package:grocery_app/screens/categories.dart';
import 'package:grocery_app/screens/search_screen.dart';

import 'custome widgets/custome_widgets.dart';
import 'product-data.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {

//   List<Map<String, String>> filteredList = [];
//   bool isSearching = false;

//   TextEditingController searchController = TextEditingController();

//   void searchEggs(String query) {
//     if (query.isEmpty) {
//       // Reset the state to the initial view if search is cleared
//       setState(() {
//         isSearching = false;
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
//       isSearching = true; // Toggle to show search results
//     });
//   }

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
                child: Hero(
                  tag: 'search tag',
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      // focusNode: _focusNode
                      autofocus: false,
                      readOnly: true, // Prevents typing directly
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const searchScreen()),
                        );
                      },
                     //  onChanged: searchEggs,
                     //  controller: searchController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors
                                  .grey, // Color when the TextField is not focused
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors
                                  .grey, // Color when the TextField is not focused
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors
                                  .grey, // Color when the TextField is focused
                            ),
                          ),
                          // labelText: 'Search Store',
                          hintText: 'Find Product',
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 25,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            //   isSearching
            //       ? searchBuilder(filteredList: filteredList)
                  // :
						 const mainBuilder()
            ],
          ),
        ),
      ),
    );
  }
}

class mainBuilder extends StatelessWidget {
  const mainBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 containers in each row
        crossAxisSpacing: 10, // No horizontal space between containers
        mainAxisSpacing: 10, // No vertical space between rows
        childAspectRatio: 0.75, // Aspect ratio of 1:1 for square containers
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
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
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
        });
  }
}
