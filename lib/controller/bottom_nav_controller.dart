import "package:get/get.dart";
import "package:grocery_app/screens/explore_view.dart";
import "package:grocery_app/screens/hom_screen.dart";

class BottomNavBarController {
  RxInt index = 0.obs;
  var page = [
    const HomeScreen(),
    const ExploreView(),
  ];
}
