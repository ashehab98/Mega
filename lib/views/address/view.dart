import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/main_appbar.dart';
import 'package:mega/views/add_address/view.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Address"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      Container(
                        padding: EdgeInsets.all(24.r),
                        height: 240.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: const Color(0xffEBF0FF),
                          ),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Priscekila",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                                style: TextStyle(
                                  color: const Color(0xff9098B1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                "+99 1234567890",
                                style: TextStyle(
                                  color: const Color(0xff9098B1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Row(children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff50555C),
                                    minimumSize: Size(77.w, 57.h),
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Edit",
                                  ),
                                ),
                                SizedBox(width: 24.w),
                                AppImage(
                                  Assets.icons.svg.trash,
                                  color: const Color(0xff9098B1),
                                  width: 24.w,
                                  height: 24.h,
                                  fit: BoxFit.fill,
                                ),
                              ]),
                            ]),
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 2),
              SizedBox(height: 71.h),
              AppButton(
                bgColor: const Color(0xffBA6400),
                text: "Add Address",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAddressView()));
                },
              ),
              SizedBox(height: 16.h),
            ]),
      ),
    );
  }
}
