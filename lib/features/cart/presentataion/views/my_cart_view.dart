import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColor.darkOrange,
          ),
        ),
      ),
      body: const MyCartViewBody(),
     
    );
  }
}
