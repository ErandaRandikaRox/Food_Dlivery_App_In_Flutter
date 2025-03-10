import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/models/resturant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart Page"),
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(userCart[index].food.name),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
