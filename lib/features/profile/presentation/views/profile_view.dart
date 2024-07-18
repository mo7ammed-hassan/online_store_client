import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/core/widgets/custom_navy_bar.dart';
import 'package:ecommerce_app_with_admin_panel/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColor.darkOrange,
          ),
        ),
      ),
      body: const ProfileViewBody(),
      bottomNavigationBar: const CustomBottomNavyBar(),
    );
  }
}
