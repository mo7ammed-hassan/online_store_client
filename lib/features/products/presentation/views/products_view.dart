import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/products_view_body.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsViewBody(),
    );
  }
}
