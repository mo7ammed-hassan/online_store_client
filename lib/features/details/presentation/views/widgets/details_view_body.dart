import 'package:ecommerce_app_with_admin_panel/features/details/presentation/views/widgets/product_details_section.dart';
import 'package:ecommerce_app_with_admin_panel/features/details/presentation/views/widgets/product_page_view_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          ProductPageViewSection(),
          SizedBox(height: 20),
          // product details
          ProductDetailsSection(),
        ],
      ),
    );
  }
}
