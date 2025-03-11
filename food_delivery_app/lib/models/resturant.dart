import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_page.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    // Burgers
    Food(
      name: "Cheese Burger",
      description: "A burger loaded with melted cheese",
      imgPath: 'assets/images/mango.jpg',
      price: 5.99,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.50),
      ],
    ),
    Food(
      name: "Double Patty Burger",
      description: "Two juicy beef patties with fresh lettuce",
      imgPath: 'assets/images/Double Patty Burger.jpg',
      price: 7.99,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Extra sauce', price: 0.75),
        Addon(name: 'Grilled onions', price: 0.99),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "Crispy fried chicken with lettuce and mayo",
      imgPath: 'assets/images/Chicken Burger.jpg',
      price: 6.49,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Spicy sauce', price: 0.50),
        Addon(name: 'Pickles', price: 0.75),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "Healthy vegetarian patty with fresh veggies",
      imgPath: 'assets/images/Veggie Burger.jpg',
      price: 5.49,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Avocado', price: 1.25),
        Addon(name: 'Vegan cheese', price: 1.00),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "Smoky BBQ sauce with crispy bacon and cheddar",
      imgPath: 'assets/images/BBQ Bacon Burger.jpg',
      price: 8.49,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Extra bacon', price: 1.99),
        Addon(name: 'Onion rings', price: 1.50),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description: "Classic Caesar with fresh romaine and pxarmesan",
      imgPath: 'assets/images/Caesar Salad.jpg',
      price: 6.99,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Grilled chicken', price: 2.00),
        Addon(name: 'Extra croutons', price: 0.75),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Fresh cucumbers, tomatoes, olives, and feta",
      imgPath: 'assets/images/Greek Salad.jpg',
      price: 7.49,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Extra feta cheese', price: 1.00),
        Addon(name: 'Balsamic dressing', price: 0.75),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Mixed greens with fresh vegetables and vinaigrette",
      imgPath: 'assets/images/Garden Salad.jpg',
      price: 5.99,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 1.50),
        Addon(name: 'Hard-boiled egg', price: 1.00),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description: "Chicken, bacon, egg, blue cheese, and avocado",
      imgPath: 'assets/images/Cobb Salad.jpg',
      price: 9.99,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Extra bacon', price: 1.50),
        Addon(name: 'Blue cheese crumbles', price: 1.00),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: "Protein-packed quinoa with fresh veggies",
      imgPath: 'assets/images/Quinoa Salad.jpg',
      price: 7.99,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Chickpeas', price: 1.25),
        Addon(name: 'Sunflower seeds', price: 0.75),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with ketchup",
      imgPath: 'assets/images/French Fries.jpg',
      price: 3.49,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Cheese sauce', price: 1.00),
        Addon(name: 'Spicy seasoning', price: 0.50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy onion rings with tangy dipping sauce",
      imgPath: 'assets/images/Onion Rings.jpg',
      price: 4.49,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Extra dipping sauce', price: 0.75),
        Addon(name: 'Garlic butter', price: 0.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted bread with garlic butter and herbs",
      imgPath: 'assets/images/Garlic Bread.jpg',
      price: 3.99,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 1.25),
        Addon(name: 'Marinara sauce', price: 0.75),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Crispy mozzarella sticks with marinara sauce",
      imgPath: 'assets/images/Mozzarella Sticks.jpg',
      price: 5.99,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Ranch dressing', price: 0.99),
        Addon(name: 'Spicy sauce', price: 0.75),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Healthy alternative with a sweet crunch",
      imgPath: 'assets/images/Sweet Potato Fries.jpg',
      price: 4.99,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Honey drizzle', price: 1.00),
        Addon(name: 'Cinnamon sugar', price: 0.75),
      ],
    ),

    // Desserts
    Food(
      name: "ChocolateCake ",
      description: "Rich and moist chocolate cake slice",
      imgPath: 'assets/images/Chocolate Cake.jpg',
      price: 6.99,
      categories: FoodCategories.desserts,
      availableAddons: [
        Addon(name: 'Extra chocolate syrup', price: 1.00),
        Addon(name: 'Whipped cream', price: 0.75),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with chocolate drizzle",
      imgPath: 'assets/images/Ice Cream Sundae.jpg',
      price: 5.49,
      categories: FoodCategories.desserts,
      availableAddons: [
        Addon(name: 'Sprinkles', price: 0.50),
        Addon(name: 'Chopped nuts', price: 0.75),
      ],
    ),

    // Drinks
    Food(
      name: "Cola",
      description: "Classic refreshing soda",
      imgPath: 'assets/images/Cola.jpg',
      price: 1.99,
      categories: FoodCategories.drinks,
      availableAddons: [
        Addon(name: "Cool", price: 0.3),
        Addon(name: "Hot", price: 0.5),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice",
      imgPath: 'assets/images/Orange Juice.jpg',
      price: 3.49,
      categories: FoodCategories.drinks,
      availableAddons: [
        Addon(name: 'Extra pulp', price: 0.50),
        Addon(name: 'Ice cubes', price: 0.25),
      ],
    ),

    // Pizza
    Food(
      name: "Margherita Pizza",
      description:
          "Classic Italian pizza with tomato sauce, mozzarella, and basil",
      imgPath: 'assets/images/Margherita Pizza.jpg',
      price: 8.99,
      categories: FoodCategories.Pizza,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 1.50),
        Addon(name: 'Mushrooms', price: 1.00),
      ],
    ),

    Food(
      name: "Pepperoni Pizza",
      description: "Spicy pepperoni slices on a cheesy tomato base",
      imgPath: 'assets/images/Pepperoni Pizza.jpg',
      price: 9.99,
      categories: FoodCategories.Pizza,
      availableAddons: [
        Addon(name: 'Extra Pepperoni', price: 2.00),
        Addon(name: 'Chili Flakes', price: 0.50),
      ],
    ),

    Food(
      name: "BBQ Chicken Pizza",
      description: "Grilled chicken, BBQ sauce, onions, and cheese",
      imgPath: 'assets/images/BBQ Chicken Pizza.jpg',
      price: 10.49,
      categories: FoodCategories.Pizza,
      availableAddons: [
        Addon(name: 'Extra Chicken', price: 2.50),
        Addon(name: 'Jalapenos', price: 1.00),
      ],
    ),

    Food(
      name: "Veggie Supreme Pizza",
      description: "A mix of fresh bell peppers, olives, mushrooms, and onions",
      imgPath: 'assets/images/Veggie Supreme Pizza.jpg',
      price: 9.29,
      categories: FoodCategories.Pizza,
      availableAddons: [
        Addon(name: 'Extra Olives', price: 1.00),
        Addon(name: 'Feta Cheese', price: 1.50),
      ],
    ),

    Food(
      name: "Hawaiian Pizza",
      description: "Classic combo of ham and pineapple on a cheesy base",
      imgPath: 'assets/images/Hawaiian Pizza.jpg',
      price: 10.99,
      categories: FoodCategories.Pizza,
      availableAddons: [
        Addon(name: 'Extra Pineapple', price: 1.50),
        Addon(name: 'Bacon Bits', price: 2.00),
      ],
    ),

    Food(
      name: "Grilled Veggie Platter",
      description:
          "A healthy mix of grilled vegetables with herbs and olive oil",
      imgPath: 'assets/images/Grilled Veggie Platter.jpg',
      price: 7.49,
      categories: FoodCategories.Vegetarian,
      availableAddons: [
        Addon(name: 'Extra Olives', price: 0.75),
        Addon(name: 'Hummus Dip', price: 1.25),
      ],
    ),

    Food(
      name: "Veggie Burger",
      description:
          "A delicious plant-based burger with fresh lettuce and tomatoes",
      imgPath: 'assets/images/Veggie Burger.jpg',
      price: 8.49,
      categories: FoodCategories.Vegetarian,
      availableAddons: [
        Addon(name: 'Cheese Slice', price: 1.00),
        Addon(name: 'Avocado', price: 1.50),
      ],
    ),

    Food(
      name: "Mediterranean Salad",
      description: "Fresh cucumbers, tomatoes, olives, and feta cheese",
      imgPath: 'assets/images/Mediterranean Salad.jpg',
      price: 6.99,
      categories: FoodCategories.Vegetarian,
      availableAddons: [
        Addon(name: 'Extra Feta', price: 1.50),
        Addon(name: 'Croutons', price: 0.75),
      ],
    ),

    Food(
      name: "Stuffed Bell Peppers",
      description:
          "Bell peppers filled with a mix of quinoa, beans, and spices",
      imgPath: 'assets/images/Stuffed Bell Peppers.jpg',
      price: 8.79,
      categories: FoodCategories.Vegetarian,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 1.25),
        Addon(name: 'Spicy Salsa', price: 0.75),
      ],
    ),

    Food(
      name: "Spinach and Ricotta Pasta",
      description:
          "Fresh spinach and creamy ricotta cheese in a light tomato sauce",
      imgPath: 'assets/images/Spinach and Ricotta Pasta.jpg',
      price: 9.99,
      categories: FoodCategories.Vegetarian,
      availableAddons: [
        Addon(name: 'Parmesan Cheese', price: 1.50),
        Addon(name: 'Garlic Bread', price: 2.00),
      ],
    ),
  ];

  // Getters

  /* 
  operation
  */

  // user cart
  final List<CartItems> _cart = [];

  List<CartItems> get cart => _cart;

  get cartItems => null; // Fixed getter (was returning null)

  // Add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItems? cartItem = _cart.firstWhere(
      (item) =>
          item.food == food && listEquals(item.selectedAddons, selectedAddons),
      orElse: () => CartItems(food: food, selectedAddons: selectedAddons),
    );

    if (_cart.contains(cartItem)) {
      cartItem.quantity++;
    } else {
      _cart.add(cartItem);
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItems cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  // Total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItems cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // Get the total number of items in cart
  int getItemCount() {
    int totalItemCount = 0;
    for (CartItems cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Generate a receipt
  String displayReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here is your receipt');
    receipt.writeln('---------------------');

    String formattedDate =
        DateFormat('yyyy-MM-dd – HH:mm:ss').format(DateTime.now());
    receipt.writeln('Date: $formattedDate');
    receipt.writeln('---------------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.food.name} - ${cartItem.quantity}x ${formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln('Addons: ${formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('Total Items: ${getItemCount()}');
    receipt.writeln('Total Price: ${formatPrice(getTotalPrice())}');
    receipt.writeln('---------------------');
    return receipt.toString();
  }

  // Format double value to currency
  String formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // Format list of addons into summary
  String formatAddons(List<Addon> addons) {
    return addons.isEmpty
        ? "None"
        : addons.map((addon) => "${addon.name} (\$${addon.price})").join(", ");
  }
}
