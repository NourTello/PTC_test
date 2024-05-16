import 'package:flutter/material.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

class AppTextField extends StatelessWidget {
  AppTextField({super.key, required this.hint});

  String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hint, hintStyle: normalTextStyle(color: lightGrey)),
    );
  }
}
