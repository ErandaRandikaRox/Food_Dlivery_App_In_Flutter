import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_discription_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategories.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // short out of and return  list of that belong to specific catergory
List<Food> filterMenuByCategory(FoodCategories category, List<Food> fullMenu) {
  return fullMenu.where((food) => food.category == category).toList();
}
  //return the list of foods in given catergory






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: const Text("Food Delivery"),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    MyCurrentLocation(),
                    const SizedBox(height: 10),
                    const MyDiscriptionBox(),
                    const SizedBox(height: 10),
                    MyTabBar(tabController: _tabController),
                  ],
                ),
              ),
            ],
        body: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(), // Allows smooth scrolling
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("First"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("Secound"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("Third"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("Fourth"),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("Fifth"),
            ),
          ],
        ),
      ),
    );
  }
}
