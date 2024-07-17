import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/poster_card.dart';
import 'package:flutter/material.dart';

class PosterSection extends StatelessWidget {
  const PosterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        shrinkWrap: true,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 20),
            child: PosterCard(),
          );
        },
      ),
    );
  }
}
