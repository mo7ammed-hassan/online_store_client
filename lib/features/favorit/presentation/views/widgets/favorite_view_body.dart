import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/products_grid_view.dart';
import 'package:flutter/material.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
