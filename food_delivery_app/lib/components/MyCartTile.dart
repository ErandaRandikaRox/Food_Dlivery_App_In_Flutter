import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_page.dart';

class MyCartTile extends StatelessWidget {
  final CartItems cartItems;

  const MyCartTile({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cartItems.food.name),
      subtitle: Text(
        'Quantity: ${cartItems.quantity} | Addons: ${cartItems.selectedAddons.map((addon) => addon.name).join(", ")}',
      ),
      trailing: ),
      
    );
  }
}