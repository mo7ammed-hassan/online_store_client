import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/features/order/presentation/views/widgets/order_view_body.dart';
import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "My Orders",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColor.darkOrange,
          ),
        ),
      ),
      body: const OrderViewBody(),
    );
  }
}
