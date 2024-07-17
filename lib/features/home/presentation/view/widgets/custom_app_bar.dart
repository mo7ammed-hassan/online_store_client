import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/app_bar_action_button.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarActionButton(
              icon: Icons.menu,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Expanded(
              child: CustomSearchBar(
                onChanged: (value) {
                  // should complete call filterProducts
                },
                controller: TextEditingController(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
