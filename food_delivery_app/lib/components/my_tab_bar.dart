import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true, // Allows horizontal scrolling if many tabs
      tabs: FoodCategories.values
          .map((category) => Tab(text: category.toString().split('.').last))
          .toList(),
    );
  }
}
