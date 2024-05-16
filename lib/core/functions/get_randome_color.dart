import 'dart:math';
import 'package:flutter/material.dart';

Color getRandomColor() {
  Random random = Random();
  // Generate random values for red, green, and blue components
  int r = random.nextInt(256); // Generates a random integer between 0 and 255
  int g = random.nextInt(256);
  int b = random.nextInt(256);
  // Create a Color object with the generated RGB values
  Color color = Color.fromARGB(255, r, g, b); // The alpha value is set to 255 (opaque)
  return color;
}