import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/category_selector_item.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/products_view.dart';
import 'package:ecommerce_app_with_admin_panel/features/profile/presentation/views/widgets/open_conatiner_wrapper.dart';
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
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6,vertical: 1),
            child: const OpenContainerWrapper(
              nextScreen: ProductsView(),
              child: CategorySelectorItem(),
            ),
          );
        },
      ),
    );
  }
}
