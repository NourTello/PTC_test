import 'package:flutter/material.dart';
import 'package:ptc_test/core/components/add_button.dart';
import 'package:ptc_test/core/components/app-button.dart';
import 'package:ptc_test/core/components/app_text_field.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';
import 'package:ptc_test/features/explore/presentation/widgets/product_card.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key, required this.title});

  String title;
  List<String> productsName = [
    'Pepsi Can ',
    'Coca Cola Can',
    'Orenge Juice',
    'Apple & GrapeJuice',
    'Sprite Can',
    'Diet Coke'
  ];
  List<double> productPrices = [4.99, 5.99, 8.99, 1.50, 1.99, 4.99];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              size: 1,
            )),
        actions: [
          AddButton(
            size: 0.7,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Add',
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
                              AppTextField(hint: 'Name'),
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical:height/50),
                                child: AppTextField(hint: 'Description'),
                              ),
                              AppTextField(hint: 'Price'),
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical:height/50),
                                child: AppTextField(hint: 'Image'),
                              ),
                              SizedBox(height: height/30,),
                              AppButton(onPressed:()=>Navigator.pop(context), child: Text("Add Item",style: buttonTextStyle(),))
                            ],
                          ),
                        ),
                      ));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 250, // here set custom Height You Want
            ),
            itemCount: 6, // Total number of items
            itemBuilder: (BuildContext context, int index) => SizedBox(
                    child: ProductCard(
                  height: height,
                  width: width,
                  productName: productsName[index],
                  productPrice: productPrices[index],
                  productVolume: 325,
                ))),
      ),
    );
  }
}
