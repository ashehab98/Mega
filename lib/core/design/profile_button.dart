import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/gen/assets.gen.dart';

class ProfileButton extends StatefulWidget {
  final String text1, text2, image;
    const ProfileButton(
      {super.key,
      required this.text1,
      required this.image,
       required this.text2,  });

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          AppImage(
            widget.image,
            color: const Color(0xffBA6400),
          ),
          SizedBox(width: 18.w),
          Text(
            widget.text1,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ]),
        Row(children: [
          Text(
            widget.text2,
            style: TextStyle(
              color: const Color(0xff9098B1),
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(width: 16.w),
          AppImage(
            Assets.icons.svg.right,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.fill,
          ),
        ]),
      ]),
    );
  }
}
