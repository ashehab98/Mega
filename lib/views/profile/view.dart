import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/core/design/app_input.dart';
import 'package:mega/core/design/main_appbar.dart';
import 'package:mega/core/design/profile_button.dart';

import '../../gen/assets.gen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Profile"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Row(children: [
                AppImage(
                  Assets.images.profilePicture.path,
                  height: 72.w,
                  width: 72.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 16.w),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Wrap(children: [
                            Padding(
                              padding: EdgeInsets.all(16.r),
                              child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "First Name",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 8.h),
                                      height: 48.h,
                                      width: 343.w,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Dominic",
                                          hintStyle: TextStyle(
                                            color: const Color(0xff9098B1),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5.r),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: const Color(0xff40BFFF),
                                              width: 1.sp,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: const Color(0xffEBF0FF),
                                              width: 1.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 24.h),
                                    Text(
                                      "Last Name",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 8.h),
                                      height: 48.h,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Ovo",
                                          hintStyle: TextStyle(
                                            color: const Color(0xff9098B1),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5.r),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: const Color(0xff40BFFF),
                                              width: 1.sp,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: const Color(0xffEBF0FF),
                                              width: 1.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 39.h),
                                    AppButton(
                                      bgColor: const Color(0xffBA6400),
                                      text: "Save",
                                      onPress: () {

                                      },
                                    ),
                                    SizedBox(height: 16.h),
                                  ]),
                            ),
                          ]);
                        });
                  },
                  child: Column(children: [
                    Text(
                      "Dominic Ovo",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "@dominic_ovo",
                      style: TextStyle(
                        color: const Color(0xff9098B1),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
                ),
              ]),



              SizedBox(height: 34.h),


              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Wrap(children: [
                          Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Change Email",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  AppInput(
                                      hintText: "rex4dom@gmail.com",
                                      icon: Assets.icons.svg.messagebrown),
                                  SizedBox(height: 21.h),
                                  Text(
                                    "We Will Send verification to your New Email",
                                    style: TextStyle(
                                      color: const Color(0xff50555C),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  SizedBox(height: 59.h),
                                  AppButton(
                                    bgColor: const Color(0xffBA6400),
                                    text: "Save",
                                    onPress: () {

                                    },
                                  ),
                                  SizedBox(height: 16.h),
                                ]),
                          ),
                        ]);
                      });
                },
                child: ProfileButton(
                  text1: "Email",
                  image: Assets.icons.svg.message,
                  text2: "rex4dom@gmail.com",
                ),
              ),



              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Wrap(children: [
                          Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone Number",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  AppInput(
                                      type: TextInputType.number,
                                      hintText: "(307) 555-0133",
                                      icon: Assets.icons.svg.mobilegrey),
                                  SizedBox(height: 84.h),
                                  AppButton(
                                    bgColor: const Color(0xffBA6400),
                                    text: "Save",
                                    onPress: () {

                                    },
                                  ),
                                  SizedBox(height: 16.h),
                                ]),
                          ),
                        ]);
                      });
                },
                child: ProfileButton(
                  text1: "Phone Number",
                  image: Assets.icons.svg.mobile,
                  text2: "(307) 555-0133",
                ),
              ),



              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Wrap(children: [
                          Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Old Password",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  AppInput(
                                    isObscure: true,
                                    hintText: "•••••••••••••••••",
                                    icon: Assets.icons.svg.password,
                                  ),
                                  SizedBox(height: 24.h),
                                  Text(
                                    "New Password",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  AppInput(
                                    isObscure: true,
                                    hintText: "•••••••••••••••••",
                                    icon: Assets.icons.svg.password,
                                  ),
                                  SizedBox(height: 24.h),
                                  Text(
                                    "New Password Again",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  AppInput(
                                    isObscure: true,
                                    hintText: "•••••••••••••••••",
                                    icon: Assets.icons.svg.password,
                                  ),
                                  SizedBox(height: 46.h),
                                  AppButton(
                                    bgColor: const Color(0xffBA6400),
                                    text: "Save",
                                    onPress: () {},
                                  ),
                                  SizedBox(height: 16.h),
                                ]),
                          ),
                        ]);
                      });
                },
                child: ProfileButton(
                  text1: "Change Password",
                  image: Assets.icons.svg.password,
                  text2: "•••••••••••••••••",
                ),
              ),





              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Wrap(children: [
                          Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "choose language",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: AppImage(Assets.icons.svg.down),
                                      ),
                                      hintText: "ENGLISH",
                                      hintStyle: TextStyle(
                                        color: const Color(0xff9098B1),
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xff40BFFF),
                                          width: 1.sp,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: const Color(0xffEBF0FF),
                                          width: 1.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 84.h),
                                  AppButton(
                                    bgColor: const Color(0xffBA6400),
                                    text: "Save",
                                    onPress: () {},
                                  ),
                                ]),
                          ),
                        ]);
                      });
                },
                child: SizedBox(
                  height: 54.h,
                  child: Row(children: [
                    AppImage(
                      Assets.icons.svg.globalSvgrepoCom,
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.scaleDown,
                      color: const Color(0xffBA6400),
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      "Change  Lang",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                  ]),
                ),
              ),



            ]),
      ),
    );
  }
}
