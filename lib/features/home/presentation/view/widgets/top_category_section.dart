import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/category_selector.dart';
import 'package:flutter/material.dart';

class TopCategorySection extends StatelessWidget {
  const TopCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top categories",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 5),
        const CategorySelector(),
      ],
    );
  }
}



