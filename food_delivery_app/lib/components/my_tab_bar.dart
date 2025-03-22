import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0), 
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 2.0), 
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TabBar(
          controller: tabController,
          isScrollable: true,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          labelPadding: const EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 2.0), // Reduced vertical from 4 to 2
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[700],
          labelStyle: const TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
          ),
          indicator: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                blurRadius: 6.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          indicatorPadding:
              const EdgeInsets.symmetric(vertical: 1.0), // Reduced from 2 to 1
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: FoodCategories.values
              .map(
                (category) => Tab(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      category.toString().split('.').last,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          physics: const BouncingScrollPhysics(),
          splashFactory: InkRipple.splashFactory,
          splashBorderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
