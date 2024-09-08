import 'package:flutter/material.dart';
import 'package:grocery_app/product-list/beverages_list.dart';
import 'package:grocery_app/screens/custome%20widgets/custome_widgets.dart';
import 'package:grocery_app/screens/product-data.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Beverages",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (beveragesList.length / 2).ceil(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: CustomContainer(
                            image: beveragesList[index * 2]['link'],
                            name: beveragesList[index * 2]['name'],
                            amount: beveragesList[index * 2]['amount'],
                            price: beveragesList[index * 2]['price'],
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductData(
                                            name: beveragesList[index]["name"],
                                            // imageUrl: product[listIndex][index]["url"],

                                            imageUrl: beveragesList[index]
                                                ['link'],
                                          )));
                            },
                            // index: index,
                            // listIndex: 1,
                          ),
                        ),
                        // CustomContainer(
                        //   data: dataList[index * 2],
                        // ),
                      ),
                      Expanded(
                        child: (index * 2 + 1 < beveragesList.length)
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: CustomContainer(
                                  image: beveragesList[index * 2 + 1]['link'],
                                  name: beveragesList[index * 2 + 1]['name'],
                                  amount: beveragesList[index * 2 + 1]
                                      ['amount'],
                                  price: beveragesList[index * 2 + 1]['price'],
                                  onPressed: () {
                                    MaterialPageRoute(
                                        builder: (context) => ProductData(
                                              name: beveragesList[index]
                                                  ["name"],
                                              // imageUrl: product[listIndex][index]["url"],

                                              imageUrl: beveragesList[index]
                                                  ['link'],
                                            ));
                                  },
                                  // index: index,
                                  // listIndex: 1,
                                ),
                              )
                            // ? CustomContainer(
                            //     data: dataList[index * 2 + 1],
                            //   )
                            : const SizedBox(), // Empty container if no data
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

        // child: ListView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemCount: beveragesList.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     // Generate a row containing two containers
        //     int firstIndex = index * 2;
        //     int secondIndex = firstIndex + 1;
        //     return Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           CustomContainer(
        //             image: beveragesList[firstIndex]['link'],
        //             name: beveragesList[firstIndex]['name'],
        //             amount: beveragesList[firstIndex]['amount'],
        //             price: beveragesList[firstIndex]['price'],
        //             // index: index,
        //             // listIndex: 1,
        //           ),
        //           CustomContainer(
        //             image: beveragesList[secondIndex]['link'],
        //             name: beveragesList[secondIndex]['name'],
        //             amount: beveragesList[secondIndex]['amount'],
        //             price: beveragesList[secondIndex]['price'],
        //             // index: index,
        //             // listIndex: 1,
        //           ),
        //         ]);
        //   },
        //   // ListView.builder(
        //   //     scrollDirection: Axis.horizontal,
        //   //     itemCount: beveragesList.length,
        //   //     itemBuilder: (BuildContext context, int index) {
        //   //       return CustomContainer(
        //   //         image: beveragesList[index]['link'],
        //   //         name: beveragesList[index]['name'],
        //   //         amount: beveragesList[index]['amount'],
        //   //         price: beveragesList[index]['price'],
        //   //         index: index,
        //   //         listIndex: 1,
        //   //       );
        //   //     }),