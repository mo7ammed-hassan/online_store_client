import 'package:ecommerce_app_with_admin_panel/core/utils/app_theme.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/products_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ECommerce',
      theme: AppTheme.lightAppTheme,
      home: const ProductsView(),
    );
  }
}
