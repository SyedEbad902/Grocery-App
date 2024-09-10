import 'package:flutter/material.dart';
import 'package:grocery_app/providers/favorite_provider.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        shadowColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        title: const Text(
          "Favourite",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Divider(
              height: 0,
              thickness: 1,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  );
                },
                itemBuilder: (context, index) {
                  if (index == favProvider.favorite.length) {
                    // After the last item, return a divider
                    return const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.black,
                    );
                  }

                  return SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 50,
                            child: Image.asset(
                                favProvider.favorite[index]["link"]),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                favProvider.favorite[index]["name"],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                favProvider.favorite[index]["amount"],
                                style: const TextStyle(
                                    fontSize: 14, color: Color(0xff7C7C7C)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            favProvider.favorite[index]["price"],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: favProvider.favorite.length == 0
                    ? favProvider.favorite.length
                    : favProvider.favorite.length + 1, // Add 1 to item count
              ),
            ),
          ],
        ),
      ),
    );
  }
}
