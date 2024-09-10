import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:grocery_app/screens/explore_view.dart";
import "package:grocery_app/screens/home_screen.dart";

import "../screens/favorite_screen.dart";

class BottomNavBarController {
  RxInt index = 0.obs;
  var page = [
    const HomeScreen(),
    const ExploreView(),
    const Scaffold(),
    const FavoriteScreen(),
    const Scaffold(),
  ];
}
