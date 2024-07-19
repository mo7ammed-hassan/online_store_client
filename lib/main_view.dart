import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_app_with_admin_panel/core/utils/app_data.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/my_cart_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/favorit/presentation/views/favorite_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/home_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> _views = [
    const HomeView(),
    const FavoriteView(),
    const MyCartView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 10,
        selectedIndex: currentIndex,
        items: AppData.bottomNavyBarItems
            .map(
              (item) => BottomNavyBarItem(
                icon: item.icon,
                title: Text(item.title),
                activeColor: item.activeColor,
                inactiveColor: item.inActiveColor,
              ),
            )
            .toList(),
        onItemSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
