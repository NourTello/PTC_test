// Function to generate a MaterialColor from a Color
import 'dart:ui';

import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: color.withAlpha(0x1F), // 10% opacity
    100: color.withAlpha(0x3F), // 25% opacity
    200: color.withAlpha(0x5F), // 38% opacity
    300: color.withAlpha(0x7F), // 50% opacity
    400: color.withAlpha(0x9F), // 62% opacity
    500: color, // 100% opacity (primary color)
    600: color.withAlpha(0xBF), // 75% opacity
    700: color.withAlpha(0xDF), // 87% opacity
    800: color.withAlpha(0xFF), // 100% opacity
    900: color.withAlpha(0xFF), // 100% opacity
  });
}