import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantitty_selector.dart';
import 'package:food_delivery_app/models/cart_page.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCartTitle extends StatelessWidget {
  final CartItems cartItems;
  const MyCartTitle({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200], // Light background color
        ),
        child: Row(
          children: [
            // Food Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cartItems.food.imgPath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            // Food Details and Quantity Selector
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food Name and Quantity Selector in Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartItems.food.name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    
                      // Quantity Selector
                      QuantitySelector(
                        food: cartItems.food,
                        quantity: cartItems.quantity,
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItems.food, cartItems.selectedAddons);
                        },
                        onDecrement: () {
                          restaurant.removeFromCart(cartItems);
                        },
                        selectedAddons: cartItems.selectedAddons,  // Use the correct value
                      ),
                    ],
                  ),

                  // Food Price
                  Text(
                    "\$${cartItems.food.price.toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 14, color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
