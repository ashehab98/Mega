import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAddressButton extends StatefulWidget {
  final TextInputType? type;
  final String text;

  const AddAddressButton({super.key, this.type, required this.text});

  @override
  State<AddAddressButton> createState() => _AddAddressButtonState();
}

class _AddAddressButtonState extends State<AddAddressButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
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
            keyboardType: widget.type,
            decoration: InputDecoration(
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

        ),
        SizedBox(height: 24.h),
      ]
    );
  }
}
