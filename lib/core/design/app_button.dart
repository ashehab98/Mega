import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final formKey = GlobalKey<FormState>();

class AppButton extends StatefulWidget {
  final bool isLoading;
  final String text;
  final VoidCallback onPress;
  final Color bgColor;
  const AppButton({
    this.isLoading = false,
    required this.bgColor,
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  @override
  State<AppButton> createState() => _AppBottomState();
}

class _AppBottomState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(  double.infinity.w,57.h),

        backgroundColor: widget.bgColor,
       ),
      onPressed: widget.onPress,
      child: Center(
        child: Text(
          widget.text,style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}
