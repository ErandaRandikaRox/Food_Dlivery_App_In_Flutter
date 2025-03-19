import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/MyCartTile.dart';
import 'package:food_delivery_app/components/my_cart_title.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/pages/patyment_page.dart'; // Note: Fix typo 'patyment_page' -> 'payment_page'
import 'package:provider/provider.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch cart items from the Restaurant model using the correct getter
    final restaurant = Provider.of<Restaurant>(context);
    final cartItems = restaurant.cart; // Use 'cart' instead of 'cartItems'

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
                      return MyCartTile(
                          cartItems:
                              cartItem); // Note: Assuming 'MyCartTitle' should be 'MyCartTile'
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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Proceed to Payment',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
