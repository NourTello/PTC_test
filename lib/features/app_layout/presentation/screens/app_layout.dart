import 'package:flutter/material.dart';
import 'package:ptc_test/core/themes/light-colors.dart';
import 'package:ptc_test/core/themes/text_style.dart';
import 'package:ptc_test/features/app_layout/presentation/screens/favourite.dart';
import 'package:ptc_test/features/app_layout/presentation/screens/profile.dart';
import 'package:ptc_test/features/app_layout/presentation/screens/shop.dart';
import 'package:ptc_test/features/explore/presentation/screens/explore.dart';

import '../../../my_cart/presentation/screens/my_cart.dart';

class AppLayout extends StatefulWidget {
  AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex = 1;

  List<String> appBarTitles = [
    'Shop',
    'Explore',
    'My Cart',
    'Favourite',
    'Profile'
  ];

  List <Widget> screen=[ShopScreen(),ExploreScreen(),MyCartScreen(),FavouriteScreen(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitles[currentIndex],
          style: appBartTextStyle(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: screen[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
