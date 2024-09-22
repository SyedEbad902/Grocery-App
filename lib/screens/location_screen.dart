import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/screens/navbar/gnav_bar.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

List<String> fruits = [
  'apple',
  'banana',
  'grapes',
  'lemon',
  'melon',
  'orange',
  'pineapple',
  'strawberry',
  'watermelon',
];

class _LocationScreenState extends State<LocationScreen> {
  List<CoolDropdownItem<String>> fruitDropdownItems = [];

  final fruitDropdownController = DropdownController<String>();
  final areaDropdownController = DropdownController<String>();

  @override
  void initState() {
    for (var i = 0; i < fruits.length; i++) {
      fruitDropdownItems.add(CoolDropdownItem<String>(
          label: 'Delicious ${fruits[i]}',
          icon: Container(
            margin: EdgeInsets.only(left: 10),
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              'assets/${fruits[i]}.svg',
            ),
          ),
          selectedIcon: Container(
            margin: EdgeInsets.only(left: 10),
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              'assets/${fruits[i]}.svg',
              color: Color(0xFF6FCC76),
            ),
          ),
          value: '${fruits[i]}'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                  // Aligns the icon to the center of the image
                  children: <Widget>[
                    // Image widget

                    Container(
                      // color: Colors.blueAccent,
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: SizedBox(
                                height: 210,
                                width: 210,
                                child: SvgPicture.asset(
                                  'assets/images/locationsrc.svg',
                                )),
                          ),
                        ],
                      ),
                    ),

                    // Icon widget
                    Container(
                      padding: const EdgeInsets.only(top: 50, left: 15),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25.0, // Size of the icon
                      ),
                    ),
                  ]),
              const Text(
                "Select Your Location",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Switch on your location to stay tune with \n\t\t\t\t\t\t\t\t\twhats happeningin your area",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Your Zone",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: WillPopScope(
                  onWillPop: () async {
                    if (fruitDropdownController.isOpen) {
                      fruitDropdownController.close();
                      return Future.value(false);
                    } else {
                      return Future.value(true);
                    }
                  },
                  child: CoolDropdown<String>(
                    controller: fruitDropdownController,
                    dropdownList: fruitDropdownItems,
                    defaultItem: null,
                    onChange: (value) async {
                      if (fruitDropdownController.isError) {
                        await fruitDropdownController.resetError();
                      }
                      // Automatically close the dropdown after selection
                      fruitDropdownController.close();
                    },
                    onOpen: (value) {
                      print("open");
                    },
                    resultOptions: ResultOptions(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      icon: const SizedBox(
                        width: 10,
                        height: 10,
                        child: CustomPaint(
                          painter: DropdownArrowPainter(),
                        ),
                      ),
                      render: ResultRender.all,
                      placeholder: 'Select Your Zone',
                      isMarquee: true,
                    ),
                    dropdownOptions: DropdownOptions(
                        top: 20,
                        height: 400,
                        gap: DropdownGap.all(5),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        align: DropdownAlign.left,
                        animationType: DropdownAnimationType.size),
                    dropdownTriangleOptions: DropdownTriangleOptions(
                      width: 20,
                      height: 30,
                      align: DropdownTriangleAlign.left,
                      borderRadius: 3,
                      left: 20,
                    ),
                    dropdownItemOptions: DropdownItemOptions(
                      isMarquee: true,
                      mainAxisAlignment: MainAxisAlignment.start,
                      render: DropdownItemRender.all,
                      height: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Your Area",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: WillPopScope(
                  onWillPop: () async {
                    if (areaDropdownController.isOpen) {
                      areaDropdownController.close();
                      return Future.value(false);
                    } else {
                      return Future.value(true);
                    }
                  },
                  child: CoolDropdown<String>(
                    controller: areaDropdownController,
                    dropdownList: fruitDropdownItems,
                    defaultItem: null,
                    onChange: (value) async {
                      if (areaDropdownController.isError) {
                        await areaDropdownController.resetError();
                      }
                      // Automatically close the dropdown after selection
                      areaDropdownController.close();
                    },
                    onOpen: (value) {
                      print("open");
                    },
                    resultOptions: ResultOptions(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      icon: const SizedBox(
                        width: 10,
                        height: 10,
                        child: CustomPaint(
                          painter: DropdownArrowPainter(),
                        ),
                      ),
                      render: ResultRender.all,
                      placeholder: 'types of your area',
                      isMarquee: true,
                    ),
                    dropdownOptions: DropdownOptions(
                        top: 20,
                        height: 400,
                        gap: DropdownGap.all(5),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        align: DropdownAlign.left,
                        animationType: DropdownAnimationType.size),
                    dropdownTriangleOptions: DropdownTriangleOptions(
                      width: 20,
                      height: 30,
                      align: DropdownTriangleAlign.left,
                      borderRadius: 3,
                      left: 20,
                    ),
                    dropdownItemOptions: DropdownItemOptions(
                      isMarquee: true,
                      mainAxisAlignment: MainAxisAlignment.start,
                      render: DropdownItemRender.all,
                      height: 50,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 10,
              )),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GoogleNavBar()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(83, 177, 117, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Adjust radius as needed
                    ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
