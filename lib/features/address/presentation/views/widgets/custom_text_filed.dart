import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.labelText,
   this.keyboardType,
    this.validator,
    this.height,
    this.onSaved, this.controller,
  });
  final String labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final double? height;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: AppColor.darkOrange),
            ),
          ),
          keyboardType: keyboardType,
          // Handle saving the value when the user finishes editing
          // Example: saveValueToDatabase(newValue);
          onSaved: onSaved,
          validator: validator,
          inputFormatters: [
            LengthLimitingTextInputFormatter(700),
            if (keyboardType == TextInputType.number)
              FilteringTextInputFormatter.allow(RegExp(r'^-?\d*\.?\d*')),
          ],
        ),
      ),
    );
  }
}
