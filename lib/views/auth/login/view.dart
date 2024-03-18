import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/core/design/app_input.dart';
import 'package:mega/core/design/social_button.dart';
import 'package:mega/gen/assets.gen.dart';
import 'package:mega/views/auth/forget_password/view.dart';
import 'package:mega/views/auth/register/view.dart';

import '../../pages/main.dart';

class LoginView extends StatefulWidget {



   const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

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
                SizedBox(height: 28.h),
                Column(children: [
                  Text(
                    "Welcome  to MEGA Store",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: const Color(0xff9098B1),
                    ),
                  ),
                ]),
                SizedBox(height: 28.h),
                AppInput(
                   hintText: "Your Email",
                  icon: Assets.icons.svg.message,
                 ),
                AppInput(
                   hintText: "Password",
                  icon: Assets.icons.svg.password,
                  isObscure: true,
                ),
                SizedBox(height: 8.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity.w, 57.h),
                    side: BorderSide(
                      width: 1.sp,
                      color: const Color(0xff000000),
                      style: BorderStyle.solid,
                    ),
                    backgroundColor: const Color(0xffED1C24),
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPageView()));
                  },
                  child: const Center(
                    child: Text(
                      "Sign In",
                    ),
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Divider(
                      color: const Color(0xffEBF0FF),
                      thickness: 5.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21.r),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: const Color(0xff9098B1),
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: const Color(0xffEBF0FF),
                      thickness: 5.h,
                    ),
                  ),
                ]),
                SizedBox(height: 16.h),
                SocialButton(
                  text: "Login with Google",
                  image: Assets.icons.svg.google,
                  onPress: () {},
                ),
                SocialButton(
                  text: "Login with facebook",
                  image: Assets.icons.svg.facebook,
                  onPress: () {},
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPasswordView()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: const Color(0xffFF000A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterView()));
                  },
                  child: const Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: "Don’t have a account? ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9098B1),
                      ),
                      children: [
                        TextSpan(
                          text: "Register",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFF000A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
