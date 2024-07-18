import 'package:ecommerce_app_with_admin_panel/core/widgets/custom_elevetd_btn.dart';
import 'package:ecommerce_app_with_admin_panel/core/widgets/navigation_title.dart';
import 'package:ecommerce_app_with_admin_panel/features/order/presentation/views/order_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/profile/presentation/views/widgets/open_conatiner_wrapper.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: const [
          SizedBox(
            height: 200,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/images/profile_pic.png',
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Mohamed Hassan@gmail.com",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 40),
          OpenContainerWrapper(
            nextScreen: OrderView(),
            child: NavigationTile(
              title: 'My Orders',
              icon: Icons.menu,
            ),
          ),
          SizedBox(height: 15),
          OpenContainerWrapper(
            nextScreen: OrderView(),
            child: NavigationTile(
              icon: Icons.location_on,
              title: 'My Addresses',
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: CustomElevetedBtn(
              title: 'Logout',
            ),
          ),
        ],
      ),
    );
  }
}
