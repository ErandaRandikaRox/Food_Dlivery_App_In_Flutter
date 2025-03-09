import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade100, // Very light gray for a soft background
    primary: Colors.grey.shade700, // Medium-dark gray for buttons, AppBar, etc.
    onPrimary: Colors.white, // White text/icons on primary for contrast
    secondary:
        Colors.grey.shade500, // Medium gray for accents (e.g., FAB, highlights)
    inversePrimary:
        Colors.black87, // Near-black for text/icons needing high contrast
  ),
  scaffoldBackgroundColor: Colors.grey.shade100, // Match scaffold to background
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black87), // Main text in near-black
    bodyMedium:
        TextStyle(color: Colors.black54), // Secondary text in softer black
  ),
);
