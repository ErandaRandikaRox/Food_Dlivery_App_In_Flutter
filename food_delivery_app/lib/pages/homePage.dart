import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_discription_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/components/my_food_tile.dart'; // Import the new file

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

  // Filter menu by category
  List<Food> filterMenuByCategory(
      FoodCategories category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.categories == category).toList();
  }

  // Handle tap on food item
  void _onFoodTap(Food food) {
    // Add your tap handling logic here
    print('Tapped on ${food.name}');
  }

  // Return list of widgets containing food items for each category
  List<Widget> getFoodInThis(List<Food> fullMenu) {
    return FoodCategories.values.map((category) {
      List<Food> categoryMenu = filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        shrinkWrap: true,
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () => _onFoodTap(food),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: const Text('Food Delivery'),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MyTabBar(tabController: _tabController),
                ),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThis(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
