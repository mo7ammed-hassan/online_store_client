
import 'package:flutter/material.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.pink,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Poster Title',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    "Get Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/product/galaxy_watch_4_1.png',
            fit: BoxFit.cover,
            height: 125,
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
