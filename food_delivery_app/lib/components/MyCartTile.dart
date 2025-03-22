import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_page.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart'; // Import Provider for state management

class MyCartTile extends StatelessWidget {
  final CartItems cartItems;

  const MyCartTile({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    // Access the Restaurant model via Provider
    final restaurant = Provider.of<Restaurant>(context, listen: false);

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            leading: Image.asset(
              cartItems.food.imgPath,
              width: 100,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50);
              },
            ),
            title: Text(cartItems.food.name),
            subtitle: Text(
              'Quantity: ${cartItems.quantity} | \n Addons: ${cartItems.selectedAddons.map((addon) => addon.name).join(", ")} \n \$${cartItems.totalPrice.toStringAsFixed(2)}',
            ),
            trailing: IconButton(
              onPressed: () {
                restaurant.cart.remove(cartItems);
                restaurant.notifyListeners();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Item removed from cart")),
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
