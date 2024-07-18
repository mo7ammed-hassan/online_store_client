import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductRatingSection extends StatefulWidget {
  const ProductRatingSection({super.key});

  @override
  State<ProductRatingSection> createState() => _ProductRatingSectionState();
}

class _ProductRatingSectionState extends State<ProductRatingSection> {
  double rating = 3.2;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: rating,
          direction: Axis.horizontal,
          itemBuilder: (context, index) => const FaIcon(
            FontAwesomeIcons.solidStar,
            color: Colors.amber,
          ),
          onRatingUpdate: (value) {
            setState(() {
              rating = value;
            });
          },
        ),
        Text(
          "(4500 Reviews)",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w300,
              ),
        ),
      ],
    );
  }
}