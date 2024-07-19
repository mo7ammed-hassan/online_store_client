import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/features/address/presentation/views/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class AddressViewBody extends StatefulWidget {
  const AddressViewBody({super.key});

  @override
  State<AddressViewBody> createState() => _AddressViewBodyState();
}

class _AddressViewBodyState extends State<AddressViewBody> {
  final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController couponController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: addressFormKey,
            child: Column(
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        CustomTextFiled(
                          controller: phoneController,
                          labelText: 'phone',
                          keyboardType: TextInputType.number,
                          onSaved: (value) {},
                          validator: (value) => value!.isEmpty
                              ? 'Please enter a phone number'
                              : null,
                        ),
                        CustomTextFiled(
                          labelText: 'Street',
                          onSaved: (val) {},
                          controller: streetController,
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter a street' : null,
                        ),
                        CustomTextFiled(
                          labelText: 'City',
                          onSaved: (value) {},
                          controller: cityController,
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter a city' : null,
                        ),
                        CustomTextFiled(
                          labelText: 'State',
                          onSaved: (value) {},
                          controller: stateController,
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter a state' : null,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFiled(
                                labelText: 'Postal Code',
                                onSaved: (value) {},
                                keyboardType: TextInputType.number,
                                controller: postalCodeController,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter a code'
                                    : null,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: CustomTextFiled(
                                labelText: 'Country',
                                onSaved: (value) {},
                                controller: countryController,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter a country'
                                    : null,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.darkOrange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () {
                      if (addressFormKey.currentState!.validate()) {
                        // store the address
                      }
                    },
                    child: const Text(
                      'Update Address',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
