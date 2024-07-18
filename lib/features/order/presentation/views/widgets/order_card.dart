import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            Text(
              r'Samsung A53 Mobile $ 1 items',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange,
              ),
            ),
             SizedBox(height: 8),
            Text(
              'Payment : prepiad',
              style: TextStyle(fontSize: 16),
            ),
             SizedBox(height: 8),
             Text(
                'date',
                style:  TextStyle(fontSize: 14, color: Colors.grey),
              ),
               SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}