import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc_test/core/functions/generate_material_color.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  primarySwatch: generateMaterialColor(primaryColor),
  scaffoldBackgroundColor: scaffoldColor,

  iconTheme: const IconThemeData(
    color: Colors.black,
    size: 50,
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: scaffoldColor,
    titleTextStyle: appBartTextStyle(),
    centerTitle: true,
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 30,
    ),
    actionsIconTheme: const IconThemeData(
      color: Colors.black,
      size: 20,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  ),

  // popupMenuTheme: PopupMenuThemeData(
  //     color: Colors.white, elevation: 8, textStyle: normalTextStyle()
  //     // Customize other properties like shape, etc.
  //     ),
  //
  // // dropdownMenuTheme: DropdownMenuThemeData(
  // //   // Customize other properties of the dropdown menu theme
  // //   menuStyle: MenuStyle (
  // //     backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
  // //       if (states.contains(MaterialState.disabled)) {
  // //         return Colors.grey; // Customize the disabled state color
  // //       }
  // //       return Colors.red; // Customize the default state color
  // //     }),
  // //
  // //   ),
  // // ),
);
