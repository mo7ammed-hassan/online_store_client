import 'package:ecommerce_app_with_admin_panel/core/widgets/horizantil_list.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/filter_bottons.dart';
import 'package:flutter/material.dart';

class CustomFlexibleSpace extends StatelessWidget {
  const CustomFlexibleSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var top =
            constrains.biggest.height - MediaQuery.of(context).padding.top;
        return Stack(
          children: [
            Positioned(
              top: top - 154,
              left: 0,
              right: 0,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: HorizontalList(),
                  ),
                  FilterBottons(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
