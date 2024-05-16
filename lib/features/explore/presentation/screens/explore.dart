import 'package:flutter/cupertino.dart';
import 'package:ptc_test/features/explore/presentation/widgets/explore_card.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  List<String> cardTitles = [
    'Beverages',
    'Dairy & Eggs',
    'Bakery & Snacks',
    'Bakery & Snacks',
    'Meat & Fish',
    'Cooking Oil & Ghee',
    'Frash Fruits & Vegetable',
    'Beverages',
    'Dairy & Eggs',
    'Bakery & Snacks',
    'Bakery & Snacks',
    'Meat & Fish',
    'Cooking Oil & Ghee',
    'Frash Fruits & Vegetable',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: 10, // Total number of items
          itemBuilder: (BuildContext context, int index) => ExploreCard(
              height: height, width: width, title: cardTitles[index])),
    );
  }
}
