import 'package:flutter/material.dart';

import 'custome widgets/custome_widgets.dart';
import 'product-data.dart';

class SearchScreen extends StatefulWidget {
  final list;
  const SearchScreen({super.key, required this.list});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Eggs and Milk",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 50,
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  "assets/images/filter-icon.png",
                  width: 17,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 containers in every row
                      //ecrease this value to reduce space between containers
                      mainAxisSpacing: 10.0, // space between rows
                      childAspectRatio: 0.8, // aspect ratio of each container
                    ),
                    itemCount: widget.list.length,
                    itemBuilder: (context, index) {
                      return CustomContainer(
                        image: widget.list[index]['link'],
                        name: widget.list[index]['name'],
                        amount: widget.list[index]['amount'],
                        price: widget.list[index]['price'],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductData(
                                        name: widget.list[index]["name"],
                                        imageUrl: widget.list[index]['link'],
                                      amount: widget.list[index]['amount'],
                                      price: widget.list[index]['price']
                                      )));
                        }, heroTag: 'uniqueTag$index',
                        // index: index,
                        // listIndex: 1,
                      );
                    }
                  
                    ),
              ),
            ],
          ),
        ));
  }
}
