import 'package:ecommerce_app_with_admin_panel/features/order/presentation/views/widgets/order_card.dart';
import 'package:flutter/material.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const OrderCard();
      },
    );
  }
}


