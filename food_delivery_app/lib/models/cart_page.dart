import 'package:food_delivery_app/models/food.dart';

class CartItems {
  Food food;
  List<Addon> selectedAddons;
  int quantity; // Fixed typo: quentity -> quantity

  CartItems({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity; // Fixed typo
  }
}