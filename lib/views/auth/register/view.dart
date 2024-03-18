import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';

import '../../../core/design/app_image.dart';
import '../../../core/design/app_input.dart';
import '../../../gen/assets.gen.dart';
import '../../pages/main.dart';
import '../login/view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              SizedBox(height: 71.h),
              Column(children: [
                Text(
                  "Let’s Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Create an new account",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: const Color(0xff9098B1),
                  ),
                ),
              ]),
              SizedBox(height: 28.h),
              AppInput(
                hintText: "Full Name",
                icon: Assets.icons.svg.user,

              ),
              AppInput(
                hintText: "Your Email",
                icon: Assets.icons.svg.message,
              ),
              AppInput(
                hintText: "Your Phone ",
                icon: Assets.icons.svg.phone,
                type: TextInputType.number,
              ),
              AppInput(
                hintText: "Password",
                icon: Assets.icons.svg.password,
                isObscure: true,
              ),
              AppInput(
                hintText: "Confirm Password",
                icon: Assets.icons.svg.password,
                isObscure: true,
              ),
              SizedBox(height: 19.h),
              AppButton(
                bgColor: const Color(0xffED1C24),
                text: "Sign Up",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPageView()));
                },
              ),
              SizedBox(height: 16.h),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginView()));
                },
                child: const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: "have a account? ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff9098B1),
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
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
    );
  }
}
