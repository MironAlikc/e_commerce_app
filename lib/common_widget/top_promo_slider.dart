import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  const TopPromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: CarouselSlider(
        items: [
          Image.asset(
            'assets/images/promotin_one.png',
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/promotin_two.png',
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/promotin_three.png',
            height: double.infinity,
            width: double.infinity,
          ),
        ],
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, value) {},
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
