import 'package:flutter/material.dart';

class AvailableColorSection extends StatelessWidget {
  const AvailableColorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Available Color',
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ChoiceChip(
                    onSelected: (value) {},
                    label: const Text('black'),
                    selected: true,
                    backgroundColor: Colors.grey[200],
                    selectedColor: Colors.orangeAccent,
                    showCheckmark: false, // show show
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
