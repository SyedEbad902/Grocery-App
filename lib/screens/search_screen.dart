
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/custome%20widgets/custome_widgets.dart';
import 'package:grocery_app/screens/product-data.dart';

import '../product-list/beverages_list.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  void _showBottomSheet(BuildContext context) {
    bool isChecked = false;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Filters",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(children: [
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.red, // Customize active color
                  checkColor: Colors.white, // Customize checkmark color
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('Custom Checkbox'),
              ]),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); //loses the bottom sheet
                },
                child: Text('Close'),
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
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: SvgPicture.asset(
                      "assets/images/filter-icon.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
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
      padding: EdgeInsets.only(top: 10, bottom: 10),
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


