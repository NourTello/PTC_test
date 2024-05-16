import 'package:flutter/material.dart';
import 'package:ptc_test/core/components/app-button.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

class CartItem extends StatelessWidget {
  CartItem(
      {super.key,
      required this.name,
      required this.height,
      required this.width,
      required this.price,
      required this.volume});

  double height;
  double width;
  String name;
  String volume;
  double price;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: width / 5, left: width / 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: normalTextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10
              ),
              Text(
                ' $volume , Price',
                style: smallTextStyle(color: darkGrey),
              ),
              SizedBox(
                height: height / 30,
              ),
              Row(
                children: [
                  SizedBox(
                      width: width / 7,
                      child: AppButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.minimize,
                          size: 25,
                          color: lightGrey,
                        ),
                        verticalPadding: 10,
                        horizontalPadding: 0,
                        containerColor: scaffoldColor,
                        borderColor: lightGrey,
                      )),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('1'),
                  ),
                  SizedBox(
                      width: width / 7,
                      child: AppButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: primaryColor,
                        ),
                        containerColor: scaffoldColor,
                        borderColor: lightGrey,
                        verticalPadding: 10,
                        horizontalPadding: 0,
                      )),
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            Icon(
              Icons.close,
              size: 25,
              color: lightGrey,
            ),
            SizedBox(
              height: height / 11,
            ),
            Text(
              '$price \$',
              style: normalTextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ));
  }
}
