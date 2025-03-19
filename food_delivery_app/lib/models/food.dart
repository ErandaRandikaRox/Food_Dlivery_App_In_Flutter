// foods

class Food {
  final String name; //chese burger
  final String description; // a burger full of cheese
  final String imgPath; //assets/images/cheese_burger.png
  final double price; // 5.99
  final FoodCategories categories; // FoodCategories.burgers
  List<Addon>
      availableAddons; // [Addon(name: "Extra Cheese", price: 0.99), Addon(name: "Extra Patty", price

  Food({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.price,
    required this.categories,
    required this.availableAddons,
  });

  get category => null;
}

// Food categories (fixed spelling mistakes)
enum FoodCategories {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
  Pizza,
  Vegetarian
}

// Food Add-ons (fixed syntax issues)
class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}
