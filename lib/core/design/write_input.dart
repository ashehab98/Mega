import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WriteInput extends StatefulWidget {
  final String hintText;

  const WriteInput({
    super.key,
    required this.hintText,
  });

  @override
  State<WriteInput> createState() => _WriteInputState();
}

class _WriteInputState extends State<WriteInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
     keyboardType: TextInputType.multiline,
     maxLines: null,
     decoration: InputDecoration(

       hintText: widget.hintText,
       hintStyle: TextStyle(
         color: const Color(0xff9098B1),
         fontSize: 12.sp,
         fontWeight: FontWeight.w400,
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
      );
  }
}
