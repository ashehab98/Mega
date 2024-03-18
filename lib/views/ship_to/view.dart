import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';

import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';
import '../success_screen/view.dart';

class ShipToView extends StatelessWidget {
  const ShipToView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ship To",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Theme.of(context).primaryColor,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: AppImage(
              Assets.icons.svg.wideleft,
              fit: BoxFit.fill,
              height: 24.h,
              width: 24.w,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: AppImage(
                Assets.icons.svg.plus,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Divider(
                color: const Color(0xffEBF0FF),
                thickness: 1.sp,
              ),
              SizedBox(height: 16.h),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
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
                text: "Next",
                onPress: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SuccessScreenView()));},
              ),
              SizedBox(height: 16.h),

            ]),
      ),
    );
  }
}
