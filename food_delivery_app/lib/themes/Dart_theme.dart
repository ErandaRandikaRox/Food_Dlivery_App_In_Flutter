import 'package:flutter/material.dart';

ThemeData DarkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Color(0xFF121212), // Dark background for a sleek look
    primary: Colors.blueGrey.shade800, // Darker primary color for elements
    onPrimary: Colors.white, // White text/icons to ensure readability
    secondary:
        Colors.teal.shade300, // Vibrant accent color for buttons, FAB, etc.
    inversePrimary: Colors.grey.shade300, // Light color for contrast
  ),
);
