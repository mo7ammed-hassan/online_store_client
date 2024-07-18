import 'package:ecommerce_app_with_admin_panel/features/details/presentation/views/widgets/available_color_section.dart';
import 'package:ecommerce_app_with_admin_panel/features/details/presentation/views/widgets/product_rating_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Samsung A53 Mobile',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 10),
          const ProductRatingSection(),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                r"$140000.0",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(width: 3),
              const Visibility(
                // change this if price != offer price
                visible: true,
                child: Text(
                  r"$150000.0",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                "Available stock : 10",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const AvailableColorSection(),
          // product description
          Text(
            "About",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          const Text(
            "Samsung Galaxy A53 Dual Sim - 128GB, 8GB RAM, 5G, Awesome White, International Version. Brief content visible, double tap to read full content..Samsung Galaxy A53 Dual Sim - 128GB, 8GB RAM, 5G, Awesome White, International Version. Brief content visible, double tap to read full content ..",
          ),
          const SizedBox(height: 40),
          //? add to cart button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Add to cart",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
