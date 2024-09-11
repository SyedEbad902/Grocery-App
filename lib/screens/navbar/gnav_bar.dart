import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/controller/bottom_nav_controller.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(2, 0))
          ]),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: const Color.fromRGBO(83, 177, 117, 5),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
            iconSize: 25,
            gap: 5,
            duration: const Duration(milliseconds: 500),
            onTabChange: (value) {
              controller.index.value = value;
            },
            tabs: const [
              GButton(icon: Icons.shop_2_outlined, text: "Shop"),
              GButton(icon: Icons.explore_outlined, text: "Explore"),
              GButton(icon: Icons.shopping_cart_outlined, text: "Cart"),
              GButton(icon: Icons.favorite_outline, text: "Favroite"),
              GButton(icon: Icons.person_2_outlined, text: "Account"),
            ],
          ),
        ),
        body: Obx(() => controller.page[controller.index.value]));
  }
}
