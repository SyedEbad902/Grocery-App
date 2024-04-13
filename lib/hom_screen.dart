
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/images/home_logo.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/location.png'),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  "Dhaka, Banassre",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            )
          ],
        ),
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Container(
            width: 345,
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Search Store',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 25,
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/banner.jpg',
            width: 320,
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 80),
            padding: const EdgeInsets.only(right: 80),
            child: const Text(
              "Exclusive Offer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
