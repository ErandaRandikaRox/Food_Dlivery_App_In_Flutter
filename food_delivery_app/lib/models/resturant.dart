import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_page.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    // 🍔 Burgers
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
      price: 8.49,
      categories: FoodCategories.burgers,
      availableAddons: [
        Addon(name: 'Extra bacon', price: 1.99),
        Addon(name: 'Onion rings', price: 1.50),
      ],
    ),

    // 🥗 Salads
    Food(
      name: "Caesar Salad",
      description: "Classic Caesar with fresh romaine and parmesan",
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/mango.jpg',
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
      imgPath: 'assets/images/1.jpg',
      price: 7.99,
      categories: FoodCategories.salads,
      availableAddons: [
        Addon(name: 'Chickpeas', price: 1.25),
        Addon(name: 'Sunflower seeds', price: 0.75),
      ],
    ),

    // 🍟 Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with ketchup",
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg',
      price: 4.99,
      categories: FoodCategories.sides,
      availableAddons: [
        Addon(name: 'Honey drizzle', price: 1.00),
        Addon(name: 'Cinnamon sugar', price: 0.75),
      ],
    ),

    // 🍰 Desserts
    Food(
      name: "Chocolate Cake",
      description: "Rich and moist chocolate cake slice",
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/1.jpg ',
      price: 5.49,
      categories: FoodCategories.desserts,
      availableAddons: [
        Addon(name: 'Sprinkles', price: 0.50),
        Addon(name: 'Chopped nuts', price: 0.75),
      ],
    ),

    // 🥤 Drinks
    Food(
      name: "Cola",
      description: "Classic refreshing soda",
      imgPath: 'assets/images/1.jpg',
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
      imgPath: 'assets/images/orange_juice.jpg',
      price: 3.49,
      categories: FoodCategories.drinks,
      availableAddons: [
        Addon(name: 'Extra pulp', price: 0.50),
        Addon(name: 'Ice cubes', price: 0.25),
      ],
    ),
  ];

  // Getters

  /* 
  operation
  */

  // user cart
  final List<CartItems> cart = [];

  // Add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // Check if an item with the same food and addons already exists
    CartItems? cartItem = cart.firstWhere(
      (item) =>
          item.food == food && listEquals(item.selectedAddons, selectedAddons),
      orElse: () => CartItems(food: food, selectedAddons: selectedAddons),
    );

    if (cart.contains(cartItem)) {
      cartItem.quantity++; // Fixed typo: quentity -> quantity
    } else {
      cart.add(cartItem);
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItems cartItem) {
    int cartIndex = cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (cart[cartIndex].quantity > 1) {
        cart[cartIndex].quantity--; // Fixed typo
      } else {
        cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  // Total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItems cartItem in cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity; // Fixed typo
    }
    return total;
  }

  // Get the total number of items in cart
  int getItemCount() {
    int totalItemCount = 0;
    for (CartItems cartItem in cart) {
      totalItemCount += cartItem.quantity; // Fixed typo
    }
    return totalItemCount;
  }

  // Clear cart
  void clearCart() {
    cart.clear();
    notifyListeners();
  }

  // Helper functions

  // Generate a receipt
  String generateReceipt() {
    String receipt = "Receipt\n\n";
    for (CartItems item in cart) {
      receipt +=
          "${item.quantity}x ${item.food.name} - \$${item.food.price.toStringAsFixed(2)}\n";
      for (Addon addon in item.selectedAddons) {
        receipt += "  + ${addon.name} - \$${addon.price.toStringAsFixed(2)}\n";
      }
    }
    receipt += "\nTotal: \$${getTotalPrice().toStringAsFixed(2)}";
    return receipt;
  }

  // Format double value to currency
  String formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // Format list of addons into summary
  String formatAddons(List<Addon> addons) {
    return addons.isEmpty
        ? "None"
        : addons.map((addon) => addon.name).join(", ");
  }
}

  /*
  H E L P E R   F U N C T I O N S
  */

  // generate the recepy

  // format double value

  // format list of abbandons into the summary

