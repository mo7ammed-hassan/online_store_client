import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomElevetedBtn extends StatelessWidget {
  const CustomElevetedBtn({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.darkOrange,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Logout',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
