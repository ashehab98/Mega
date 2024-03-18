import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/app_image.dart';
 import 'package:mega/gen/assets.gen.dart';
import 'package:mega/views/auth/reset_password/view.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 50.h),
                  child: AppImage(
                    Assets.images.logo.path,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 38.h),
                Column(children: [
                  Text(
                    "Verify Your Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "check your Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: const Color(0xff9098B1),
                    ),
                  ),
                ]),
                SizedBox(height: 148.h),
                AppButton(
                  bgColor: const Color(0xffED1C24),
                  text: "Verify",
                  onPress: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ResetPasswordView()));},
                ),
              ]),
        ),
      ),
    );
  }
}
