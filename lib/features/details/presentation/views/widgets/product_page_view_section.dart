import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPageViewSection extends StatefulWidget {
  const ProductPageViewSection({
    super.key,
  });

  @override
  State<ProductPageViewSection> createState() => _ProductPageViewSectionState();
}

class _ProductPageViewSectionState extends State<ProductPageViewSection> {
  int newIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.42,
      width: width,
      decoration: const BoxDecoration(
        color: Color(0xFFE5E6E8),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(200),
          bottomLeft: Radius.circular(200),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.32,
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (value) {
                setState(() {
                  newIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return FittedBox(
                  fit: BoxFit.none,
                  child: Image.asset(
                    'assets/product/a53_1.png',
                    scale: 3.0,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          ),
          AnimatedSmoothIndicator(
            activeIndex: newIndex,
            count: 3,
            effect: const WormEffect(
              dotColor: Colors.white,
              activeDotColor: AppColor.darkOrange,
            ),
          ),
        ],
      ),
    );
  }
}
