import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/category_selector_item.dart';
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
          return const CategorySelectorItem();
        },
      ),
    );
  }
}
