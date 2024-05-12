import 'package:flutter/material.dart';

import '../product-list/beverages_list.dart';
import 'custome widgets/custome_widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

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
              margin: EdgeInsets.only(right: 10),
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
                physics: NeverScrollableScrollPhysics(),
                itemCount: (eggsList.length / 2).ceil(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: CustomContainer(
                            image: eggsList[index * 2]['link'],
                            name: eggsList[index * 2]['name'],
                            amount: eggsList[index * 2]['amount'],
                            price: eggsList[index * 2]['price'],
                            // index: index,
                            // listIndex: 1,
                          ),
                        ),
                        // CustomContainer(
                        //   data: dataList[index * 2],
                        // ),
                      ),
                      Expanded(
                        child: (index * 2 + 1 < eggsList.length)
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: CustomContainer(
                                  image: eggsList[index * 2 + 1]['link'],
                                  name: eggsList[index * 2 + 1]['name'],
                                  amount: eggsList[index * 2 + 1]['amount'],
                                  price: eggsList[index * 2 + 1]['price'],
                                  // index: index,
                                  // listIndex: 1,
                                ),
                              )
                            // ? CustomContainer(
                            //     data: dataList[index * 2 + 1],
                            //   )
                            : SizedBox(), // Empty container if no data
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
    ;
  }
}
