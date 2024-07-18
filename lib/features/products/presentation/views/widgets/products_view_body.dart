import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/products_grid_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/custom_flexiable_space.dart';
import 'package:flutter/material.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            expandedHeight: 190.0,
            centerTitle: true,
            title: const Text(
              'Product name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange,
              ),
            ),
            flexibleSpace: const CustomFlexibleSpace(),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: ProductsGridView(),
            ),
          ),
        ],
      ),
    );
  }
}
