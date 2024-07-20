import 'package:ecommerce_app_with_admin_panel/core/utils/app_color.dart';
import 'package:ecommerce_app_with_admin_panel/features/address/presentation/views/widgets/address_form.dart';
import 'package:flutter/material.dart';

class AddressViewBody extends StatefulWidget {
  const AddressViewBody({super.key});

  @override
  State<AddressViewBody> createState() => _AddressViewBodyState();
}

class _AddressViewBodyState extends State<AddressViewBody> {
  final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();

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
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: AddressForm(),
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
                        borderRadius: BorderRadius.circular(30),
                      ),
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
