import 'package:flutter/material.dart';

class CategorySelectorItem extends StatelessWidget {
  const CategorySelectorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E6E8),
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "assets/category/electronics.png",
              fit: BoxFit.contain,
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Electronics',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
