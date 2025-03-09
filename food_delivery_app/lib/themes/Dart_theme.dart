import 'package:flutter/material.dart';

ThemeData DarkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background:
        Color(0xFF1A1A1A), // Very dark gray (near black) for a sleek look
    primary: Colors.grey.shade800, // Dark gray for buttons, AppBar, etc.
    onPrimary: Colors.grey.shade200, // Light gray text/icons for readability
    secondary: Colors.grey.shade600, // Medium-dark gray for accents
    inversePrimary: Colors.grey.shade400, // Lighter gray for contrast
  ),
  scaffoldBackgroundColor: Color(0xFF1A1A1A), // Match scaffold to background
  textTheme: TextTheme(
    bodyLarge:
        TextStyle(color: Colors.grey.shade200), // Light gray for main text
    bodyMedium: TextStyle(
        color: Colors.grey.shade400), // Medium gray for secondary text
  ),
);
