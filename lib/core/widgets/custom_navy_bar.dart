import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_app_with_admin_panel/core/utils/app_data.dart';
import 'package:flutter/material.dart';

class CustomBottomNavyBar extends StatefulWidget {
  const CustomBottomNavyBar({
    super.key,
  });

  @override
  State<CustomBottomNavyBar> createState() => _CustomBottomNavyBarState();
}

class _CustomBottomNavyBarState extends State<CustomBottomNavyBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
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
    );
  }
}
