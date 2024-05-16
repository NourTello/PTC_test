import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/core/asset_const/assets-const.dart';
import 'package:ptc_test/core/components/app-button.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';

class PlaceOrderSuccessfully extends StatelessWidget {
  const PlaceOrderSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset(AssetsConst.success),
            Padding(
              padding:  EdgeInsets.symmetric(vertical:height/40),
              child: Text('Your Order has been accepted',style: headTextStyle(fontSize: 25),textAlign: TextAlign.center,),
            ),
            Text('Your items has been placed and is on it’s way to being processed',style: normalTextStyle(color: darkGrey),textAlign: TextAlign.center,),
            Spacer(),
            AppButton(onPressed: (){}, child: Text('Track Order',style: buttonTextStyle(),)),
            SizedBox(height: height/50,),
            AppButton(
              containerColor: scaffoldColor,
                borderColor: scaffoldColor,
                onPressed: ()=>Navigator.pop(context), child: Text('Back to home',style: buttonTextStyle(color: Colors.black,),))
          ],
        ),
      ),
    );
  }
}
