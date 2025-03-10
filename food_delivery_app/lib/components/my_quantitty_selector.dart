import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final List<Addon> selectedAddons; // Pass selected addons as a parameter

  const QuantitySelector({
    super.key,
    required this.food,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.selectedAddons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Decrement Button
              GestureDetector(
                onTap: onDecrement,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ),
                  child: const Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),

              // Quantity Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  quantity.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              // Increment Button
              GestureDetector(
                onTap: onIncrement,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Addons List
        if (selectedAddons.isNotEmpty)
          SizedBox(
            height: 40, // Adjust height based on content
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: selectedAddons
                  .map((addon) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name), 
                              const SizedBox(width: 5),
                              Text("\$${addon.price.toStringAsFixed(2)}"),
                            ],
                          ),
                          onSelected: (value) {},
                        ),
                      ))
                  .toList(), // Convert map to a list
            ),
          ),
      ],
    );
  }
}
