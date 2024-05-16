import 'package:flutter/material.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

class CheckOutInfo extends StatelessWidget {
  CheckOutInfo({super.key, required this.widget, required this.text});

  String text;
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: normalTextStyle(color: darkGrey),
        ),
        Spacer(),
        widget,
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 25,
        )
      ],
    );
  }
}
