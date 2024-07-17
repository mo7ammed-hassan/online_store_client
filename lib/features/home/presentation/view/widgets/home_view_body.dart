import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/poster_section.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/top_category_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Sina",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "Lets gets somethings?",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              // poster section
              const PosterSection(),
              // top category section
              const TopCategorySection(),
              // product section
              
            ],
          ),
        ),
      ),
    );
  }
}
