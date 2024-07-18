import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/custom_drop_down.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/multi_select_drop_down.dart';
import 'package:flutter/material.dart';

class FilterBottons extends StatelessWidget {
  const FilterBottons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDropdown<String>(
            hintText: 'Sort By Price',
            items: const ['Low To High', 'High To Low'],
            onChanged: (val) {
              if (val?.toLowerCase() == 'low to high') {
              } else {}
            },
            displayItem: (val) => val,
          ),
        ),
        Expanded(
          child: MultiSelectDropDown(
            hintText: 'Filter By Brands',
            items: const ['Appel,Vivo,Oppo'],
            onSelectionChanged: (val) {},
            displayItem: (val) => val,
            selectedItems: const [],
          ),
        ),
      ],
    );
  }
}
