import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';

class AppInput extends StatefulWidget {
  final String hintText, icon;
  final TextEditingController? controller;
  final bool isObscure;
  final FormFieldValidator? validator;
   final TextInputType? type;
  const AppInput({
    super.key,
    required this.hintText,
    required this.icon,
    this.isObscure = false,
    this.controller, this.validator, this.type,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      height: 48.h,
      child: TextFormField(
keyboardType:widget.type ,
        controller: widget.controller,
        validator: widget.validator,

        obscureText: isObscure && widget.isObscure,
        decoration: InputDecoration(
          suffix: widget.isObscure
              ? IconButton(
                  onPressed: () {
                    isObscure = !isObscure;
                    setState(() {});
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: const Color(0xff9098B1),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              bottom: 12.h,
              right: 10.w,
              left: 16.w,
            ),
            child: AppImage(
              widget.icon,
              fit: BoxFit.scaleDown,
              height: 24.h,
              width: 24.w,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
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
    );
  }
}
