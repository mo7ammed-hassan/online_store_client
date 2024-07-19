import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/category_selector_item.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/products_view.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsView(),
                ),
              );
            },
            child: const CategorySelectorItem(),
          );
        },
      ),
    );
  }
}
