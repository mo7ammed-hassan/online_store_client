import 'package:ecommerce_app_with_admin_panel/features/address/presentation/views/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({
    super.key,
  });

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController couponController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFiled(
          controller: phoneController,
          labelText: 'phone',
          keyboardType: TextInputType.number,
          onSaved: (value) {},
          validator: (value) =>
              value!.isEmpty ? 'Please enter a phone number' : null,
        ),
        CustomTextFiled(
          labelText: 'Street',
          onSaved: (val) {},
          controller: streetController,
          validator: (value) => value!.isEmpty ? 'Please enter a street' : null,
        ),
        CustomTextFiled(
          labelText: 'City',
          onSaved: (value) {},
          controller: cityController,
          validator: (value) => value!.isEmpty ? 'Please enter a city' : null,
        ),
        CustomTextFiled(
          labelText: 'State',
          onSaved: (value) {},
          controller: stateController,
          validator: (value) => value!.isEmpty ? 'Please enter a state' : null,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFiled(
                labelText: 'Postal Code',
                onSaved: (value) {},
                keyboardType: TextInputType.number,
                controller: postalCodeController,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a code' : null,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomTextFiled(
                labelText: 'Country',
                onSaved: (value) {},
                controller: countryController,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a country' : null,
              ),
            ),
          ],
        )
      ],
    );
  }
}
