import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/core/design/app_input.dart';
 import 'package:mega/gen/assets.gen.dart';

import '../login/view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
                SizedBox(height: 29.h),
                Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                AppInput(
                  hintText: "Password",
                  icon: Assets.icons.svg.password,
                  isObscure: true,
                ),
                SizedBox(height: 14.h),
                AppInput(
                  hintText: "confirm password",
                  icon: Assets.icons.svg.password,
                  isObscure: true,
                ),
                SizedBox(height: 36.h),
                AppButton(
                  bgColor: const Color(0xffED1C24),
                  text: "Confirm",
                  onPress: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const LoginView()));},
                ),
              ]),
        ),
      ),
    );
  }
}
