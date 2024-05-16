import 'package:flutter/material.dart';

import '../functions/regular_expr_functions.dart';
import 'light-colors.dart';

//-------------------------------THEME--------------------------------------
TextStyle appBartTextStyle(
    {Color color = Colors.black,
    double fontSize = 20,
    var fontWeight = FontWeight.w700}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
    color: color,
  );
}

//-------------------------------Head text---------------------------------------

TextStyle headTextStyle(
    {Color color = Colors.black,
    double fontSize = 20,
    var fontWeight = FontWeight.w700}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: fontWeight);
}

TextStyle buttonTextStyle(
    {Color color = Colors.white,
    double fontSize = 17,
    var fontWeight = FontWeight.w500}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins ',
      fontWeight: fontWeight);
}

TextStyle normalTextStyle({
  Color color = Colors.black,
  double fontSize = 15,
  var fontWeight = FontWeight.w400,
  TextOverflow textOverFlow = TextOverflow.visible,
}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins ',
       fontWeight:fontWeight,
      overflow: textOverFlow);
}

TextStyle smallTextStyle(
    {Color color = Colors.black,
    double fontSize = 12,
    bool bold = true,
    TextDecoration textDecoration = TextDecoration.none,
    TextOverflow textOverFlow = TextOverflow.ellipsis}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Poppins ',
      //fontWeight: (bold) ? FontWeight.bold : FontWeight.w400,
      overflow: textOverFlow);
}
