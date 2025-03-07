import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.white, // Light background for better readability
    primary: Colors.blue, // Blue primary color for buttons, AppBar, etc.
    onPrimary: Colors.white, // White text/icons on the blue primary color
    secondary: Colors.blueGrey, // Soft accent color for buttons, FAB, etc.
    inversePrimary: Colors.black, // Black text/icons for contrast
  ),
);
