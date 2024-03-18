import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/add_address_button.dart';
import 'package:mega/core/design/main_appbar.dart';

import '../../core/design/app_button.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Add Address"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              const AddAddressButton(text: "Country or region"),
              const AddAddressButton(text: "Street Address"),
              const AddAddressButton(text: "Street Address 2 (Optional)"),
              const AddAddressButton(text: "State/Province/Region"),
              const AddAddressButton(text: "City"),
              const AddAddressButton(
                text: "Zip Code",
                type: TextInputType.number,
              ),
              const AddAddressButton(
                text: "Phone Number",
                type: TextInputType.number,
              ),
              SizedBox(height: 30.h),
              AppButton(
                bgColor: const Color(0xffBA6400),
                text: "Add Address",
                onPress: () {},
              ),
              SizedBox(height: 6.h),
            ]),
      ),
    );
  }
}
