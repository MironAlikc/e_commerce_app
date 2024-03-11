import 'package:e_commerce_app/common_widget/popular_menu.dart';
import 'package:e_commerce_app/common_widget/search_widget.dart';
import 'package:e_commerce_app/common_widget/top_promo_slider.dart';
import 'package:e_commerce_app/screens/category_page.dart';
import 'package:e_commerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Column(
          children: [
            const SearchWidget(),
            const TopPromoSlider(),
            const PopularMenu(),
            SizedBox(
              height: 10,
              child: Container(
                color: const Color(0xFFf5f6f7),
              ),
            ),
            const PreferredSize(
              preferredSize: Size.fromHeight(
                (50),
              ),
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: eshopColor,
                tabs: [
                  Tab(
                    text: 'Categories',
                  ),
                  Tab(
                    text: 'Brands',
                  ),
                  Tab(
                    text: 'Shope',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: const Color(0xFFf5f6f7),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.white24,
                    child: const CategoryPage(),
                  ),
                  Container(
                    color: Colors.white24,
                  ),
                  Container(
                    color: Colors.white24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
