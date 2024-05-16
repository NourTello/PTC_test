import 'package:flutter/material.dart';
import 'package:ptc_test/core/asset_const/assets-const.dart';
import 'package:ptc_test/core/functions/get_randome_color.dart';
import 'package:ptc_test/core/router/animation_route.dart';
import 'package:ptc_test/core/themes/text_style.dart';
import 'package:ptc_test/features/explore/presentation/screens/products.dart';

class ExploreCard extends StatelessWidget {
  ExploreCard(
      {super.key,
      required this.height,
      required this.width,
      required this.title});

  double height;
  double width;
  String title;
Color color=getRandomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MyAnimatedRoute(page: ProductsScreen(title: title,))),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.13),
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color: color)
        ),
        child: Column(
          children: [
            Image.asset(
              AssetsConst.vegetables,
            ),
            SizedBox(height: height/20,),
            Expanded(child: Text(title,style: normalTextStyle(),textAlign: TextAlign.center,))
          ],
        ),
      ),
    );
  }
}
