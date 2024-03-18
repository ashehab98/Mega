import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/gen/assets.gen.dart';
import 'package:mega/views/pages/main.dart';

class SuccessScreenView extends StatelessWidget {
  const SuccessScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Align(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImage(Assets.icons.successIcon.path),
          Text(
            "Success",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "thank you for shopping From",
            style: TextStyle(
              color: const Color(0xff9098B1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            "MEGA Store",
            style: TextStyle(
              color: const Color(0xff9098B1),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 52.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              bgColor: const Color(0xff50555C),
              text: "Back To Home",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPageView(),
                  ),
                );
              },
            ),
          ),
        ]),
      )),
    );
  }
}
