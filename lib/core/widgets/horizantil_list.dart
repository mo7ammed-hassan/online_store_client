import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ChoiceChip(
                label: const Text('All'),
                selected: false,
                onSelected: (bool selected) {},
                backgroundColor: Colors.grey[200],
                selectedColor: Colors.orangeAccent,
                showCheckmark: false,
              ),
            );
          },
        ),
      ),
    );
  }
}
