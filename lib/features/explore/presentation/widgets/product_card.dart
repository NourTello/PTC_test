import 'package:flutter/material.dart';
import 'package:ptc_test/core/asset_const/assets-const.dart';
import 'package:ptc_test/core/components/add_button.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.productPrice,
      required this.productVolume,
      required this.productName,
      required this.width,
      required this.height});

  double height;
  double width;
  String productName;
  double productPrice;
  double productVolume;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: lightGrey)),
      child: Column(
        children: [
          Image.asset(AssetsConst.cola),
          SizedBox(
            height: height / 30,
          ),
          Text(
            productName,
            style: normalTextStyle(),
          ),
          Text(
            "${productVolume} ml ,",
            style: smallTextStyle(color: darkGrey),
          ),
          Text("Price",style:smallTextStyle(color: darkGrey),),
          Row(
            children: [
              Text(
                " \$${productPrice} ",
                style: normalTextStyle(),
              ),
              Spacer(),
              AddButton(onPressed: () {  },)
            ],
          )
        ],
      ),
    );
  }
}
