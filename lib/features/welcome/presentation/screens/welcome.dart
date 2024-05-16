import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test/core/asset_const/assets-const.dart';
import 'package:ptc_test/core/components/app-button.dart';
import 'package:ptc_test/core/router/animation_route.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';
import 'package:ptc_test/features/app_layout/presentation/screens/app_layout.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: height/10,horizontal:16),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsConst.welcomeBackground),fit: BoxFit.fill)),

        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(AssetsConst.carrotLogo, semanticsLabel: 'Acme Logo'),
        SizedBox(
          height: height / 25,
        ),
        Text(
          'Welcome to our store',
          style: headTextStyle(color: scaffoldColor, fontSize: 35,),
          textAlign: TextAlign.center,
        ),
        Text(
          'Ger your groceries in as fast as one hour',
          style: smallTextStyle(color: white2),
        ),
        SizedBox(
          height: height / 25,
        ),
        AppButton(
            onPressed: () {
              Navigator.pushReplacement(context, MyAnimatedRoute(page: AppLayout()));
            },
            child: Text(
              "Get Started",
              style: buttonTextStyle(),
            ))
      ],
        ),
      )
    );
  }
}
