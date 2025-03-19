import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    // Using showDialog for a custom alert dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Enter the location"),
        ),
        actions: [
          // Save buton
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Save"),
          ),

          // close button
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 1,
            left: 5,
            right: 5,
          ), // Reduced top padding
          color: Colors.white,
          child: Column(
            children: [
              // Address Text
              GestureDetector(
                onTap: () {
                  // Open the location search box dialog
                  openLocationSearchBox(context);
                },
                child: const Text(
                  "DELIVER NOW",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ), // Space between title and the next section
              // Dropdown Menu Icon
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "No 160 ,\nNew Housing Scheme,\nMatale",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
