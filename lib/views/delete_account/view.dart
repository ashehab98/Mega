import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/views/auth/login/view.dart';
import 'package:mega/views/pages/account/view.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Align(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImage(Assets.icons.confirmationIcon.path),
          Text(
            "Confirmation",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Are you sure wanna delete your account ",
            style: TextStyle(
              color: const Color(0xff9098B1),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(children: [
              AppButton(
                bgColor: const Color(0xffED1C24),
                text: "Delete",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginView()));
                },
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity.w, 57.h),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AccountView()));
                },
                child: Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff9098B1),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ]),
      )),
    );
  }
}
