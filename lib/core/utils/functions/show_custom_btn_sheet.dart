import 'package:ecommerce_app_with_admin_panel/features/address/presentation/views/widgets/address_form.dart';
import 'package:ecommerce_app_with_admin_panel/features/address/presentation/views/widgets/custom_text_filed.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/apply_coupon_button.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/cart_check_out.dart';
import 'package:ecommerce_app_with_admin_panel/features/cart/presentataion/views/widgets/complete_order_btn.dart';
import 'package:ecommerce_app_with_admin_panel/features/products/presentation/views/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          //key: ,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('Enter Address'),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_drop_down),
                    onPressed: () {},
                  ),
                ),
                // adress form
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const AddressForm(),
                ),
                CustomDropdown(
                  items: const ['cod', 'prepaid'],
                  displayItem: (val) => val,
                  onChanged: (val) {},
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFiled(
                        height: 60,
                        labelText: 'Enter Coupon code',
                        onSaved: (value) {},
                        //controller: couponController,
                      ),
                    ),
                    ApplyCouponButton(onPressed: () {})
                  ],
                ),
                const CartCheackOut(),
                const Divider(),
                CompleteOrderButton(
                  labelText: 'Complete Order  \$${100} ',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
