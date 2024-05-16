import 'package:flutter/material.dart';
import 'package:ptc_test/core/themes/light-colors.dart';

class AddButton extends StatelessWidget {
  AddButton({super.key, this.size = 1, required this.onPressed});
  double size;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 40 * size,
        width: 40 * size*1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: Icon(
          Icons.add,
          size: size*25,
          color: Colors.white,
        ),
      ),
    );
  }
}
