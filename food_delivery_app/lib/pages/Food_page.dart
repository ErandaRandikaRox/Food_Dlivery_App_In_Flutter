import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  Map<Addon, bool> selectedAddons = {};

  @override
  void initState() {
    super.initState();
    selectedAddons = {
      for (var addon in widget.food.availableAddons) addon: false
    };
  }

  void addToCart() {
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    // Add to cart using Provider
    Provider.of<Restaurant>(context, listen: false)
        .addToCart(widget.food, currentlySelectedAddons);

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Added to cart!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imgPath),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          widget.food.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '\$${widget.food.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              widget.food.description,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        Divider(color: Theme.of(context).colorScheme.secondary),
                        Text(
                          'Addons',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              Addon addon = widget.food.availableAddons[index];
                              return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  '\$${addon.price.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                value: selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    selectedAddons[addon] = value ?? false;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        MyButton(
                          ontap: addToCart, // Fixed: Pass function reference
                          text: 'Add To Cart',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
