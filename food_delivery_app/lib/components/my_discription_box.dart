import 'package:flutter/material.dart';

class MyDiscriptionBox extends StatelessWidget {
  const MyDiscriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryTextColor = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    var secoundaryTextColor = TextStyle(
      color: Theme.of(context).colorScheme.secondary,
    );
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // delivery fee
              Text('\$99', style: primaryTextColor),
              Text("delivery fee", style: secoundaryTextColor),
            ],
          ),

          Column(
            children: [
              // delivery time
              Text("15-30 min", style: primaryTextColor),
              Text("Delivery TIme", style: secoundaryTextColor),
            ],
          ),
        ],
      ),
    );
  }
}
