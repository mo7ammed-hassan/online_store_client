import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/buy_now_btn.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/cart_list_view_section.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/total_price_section.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: CartListViewSection(),
        ),
        TotalPriceSection(),
        BuyNowButton(),
      ],
    );
  }
}
