import 'package:flutter/material.dart';
import 'package:ptc_test/core/components/app-button.dart';
import 'package:ptc_test/core/router/animation_route.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';
import 'package:ptc_test/features/my_cart/presentation/wdigets/cart_item.dart';
import 'package:ptc_test/features/my_cart/presentation/wdigets/checkout_info.dart';

import 'place_order_successfully.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});

  List<String> names = [
    'Bell Pepper Red',
    'Egg Chicken Red',
    'Organic Bananas',
    'Ginger'
  ];
  List<String> volumes = ['1Kg', '4pcs', '12Kg', '250gm'];
  List<double> prices = [4.99, 1.99, 3, 00, 2, 99];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => CartItem(
                    name: names[index],
                    height: height,
                    width: width,
                    price: prices[index],
                    volume: volumes[index]),
                separatorBuilder: (context, index) => Divider(color: lightGrey),
                itemCount: names.length),
          ),
          SizedBox(
            width: width,
            child: AppButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.all(16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Checkout',
                                        style: headTextStyle(),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            size: 30,
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      color: lightGrey,
                                    ),
                                  ),
                                  CheckOutInfo(
                                      widget: Text(
                                        'Select Method',
                                        style: normalTextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      text: 'Delivery'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      color: lightGrey,
                                    ),
                                  ),
                                  CheckOutInfo(
                                      widget: Icon(Icons.credit_card,size: 25,),
                                      text: 'Pament'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      color: lightGrey,
                                    ),
                                  ),
                                  CheckOutInfo(
                                      widget: Text(
                                        'Pick discount',
                                        style: normalTextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      text: 'Promo Code'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      color: lightGrey,
                                    ),
                                  ),
                                  CheckOutInfo(
                                      widget: Text(
                                        '\$13.97',
                                        style: normalTextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      text: 'Total Cost'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(
                                      color: lightGrey,
                                    ),
                                  ),
                                  Text(
                                    'By placing an order you agree to our Terms And Conditions',
                                    style: smallTextStyle(color: darkGrey),
                                  ),
                                  SizedBox(
                                    height: height / 50,
                                  ),
                                  SizedBox(
                                    child: AppButton(
                                      onPressed: () {
                                        Navigator.push(context, MyAnimatedRoute(page: PlaceOrderSuccessfully()));
                                      },
                                      child: Text(
                                        'Place Order',
                                        style: buttonTextStyle(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Go to Checkout',
                      style: buttonTextStyle(),
                    ),
                    SizedBox(width: width / 7),
                    Container(
                        padding: EdgeInsets.all(2),
                        color: Colors.black.withOpacity(0.2),
                        child: Text(
                          '\$12.96',
                          style: smallTextStyle(color: scaffoldColor),
                        ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
