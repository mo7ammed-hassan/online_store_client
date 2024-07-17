import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool isExpanded = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
          if (!isExpanded) {
            _focusNode.unfocus();
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isExpanded ? Colors.white : Colors.grey[200],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        child: FocusScope(
          node: FocusScopeNode(),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  controller: widget.controller,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                  autofocus: false,
                  onChanged: widget.onChanged,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Add your code here to handle search functionality
                  widget.controller.clear();
                  _focusNode.unfocus();
                },
                child: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
