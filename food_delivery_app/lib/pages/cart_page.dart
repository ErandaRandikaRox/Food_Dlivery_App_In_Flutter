import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_title.dart';
import 'package:food_delivery_app/models/cart_page.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/pages/patyment_page.dart'; // Should be payment_page.dart
import 'package:provider/provider.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart'; // Add this import

class CartPage extends StatelessWidget {
  const CartPage({super.key}); // Added constructor with key

  @override
  Widget build(BuildContext context) {
    // Fetch cart items from the Restaurant model
    final restaurant = Provider.of<Restaurant>(context);
    final cartItems = restaurant.cartItems ?? []; // Ensure the list is not null

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // List of cart items
          Expanded(
            child: cartItems.isEmpty
                ? const Center(child: Text('Your cart is empty!'))
                : ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = cartItems[index];
                      return MyCartTitle(cartItems: cartItem);
                    },
                  ),
          ),

          // Proceed to Payment Button
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(
                      onCreditCardWidgetChange: (CreditCardBrand brand) {
                        // Handle credit card brand change if needed
                        print('Card brand changed to: ${brand.brandName}');
                      },
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Proceed to Payment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}