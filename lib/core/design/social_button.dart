import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';


class SocialButton extends StatefulWidget {
  final String text, image;
  final VoidCallback onPress;
  const SocialButton(
      {super.key,
      required this.text,
      required this.image,
      required this.onPress});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPress;
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        height: 57.h,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffEBF0FF)),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 11.w, right: 87.w),
            child: AppImage(
              widget.image,
              width: 24.w,
              height: 24.h,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff9098B1),
            ),
          ),
        ]),
      ),
    );
  }
}
