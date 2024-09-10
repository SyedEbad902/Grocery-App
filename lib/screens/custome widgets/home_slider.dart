import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final onChange;
  final int currentSlider;
  const HomeSlider(
      {super.key, required this.onChange, required this.currentSlider});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'assets/images/banner.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/banner2.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/banner3.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: currentSlider == index ? 18 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentSlider == index
                            ? const Color.fromARGB(255, 108, 212, 144)
                            : const Color.fromARGB(255, 214, 212, 212),
                        border:
                            Border.all(color: const Color.fromARGB(255, 3, 148, 8)))),
              ),
            ),
          ),
        )
      ],
    );
  }
}
