import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_title.dart';
import 'package:food_delivery_app/models/cart_page.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch cart items from the Restaurant model
    final restaurant = Provider.of<Restaurant>(context);
    final cartItems = restaurant.cartItems ?? [];  // Ensure the list is not null

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.green,
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty!'))
          : ListView.builder(
              itemCount: cartItems.length,  // Safely get the length of cartItems
              itemBuilder: (context, index) {
                final cartItem = cartItems[index]; // Get the cart item at this index
                return MyCartTitle(cartItems: cartItem);
              },
            ),
    );
  }
}
