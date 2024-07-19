import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/cart_product.dart';
import 'package:flutter/material.dart';

class CartListViewSection extends StatelessWidget {
  const CartListViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          2,
          (index) {
            return const CartProduct();
          },
        ),
      ),
    );
  }
}
