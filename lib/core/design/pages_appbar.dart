import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/gen/assets.gen.dart';

class PagesAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String text;

  const PagesAppBar({
    super.key,
    required this.text,
    });

  @override
  State<PagesAppBar> createState() => _PagesAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(90.h);
}

class _PagesAppBarState extends State<PagesAppBar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Column(
        children: [
          Row(children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:

              AppImage(
                Assets.icons.svg.left,
                fit: BoxFit.fill,
                height: 15.54.h,
                width: 24.w,
              ),
            ),
            SizedBox(width: 5.w),
            Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: const Color(0xff50555C),
              ),
            ),
          ]),
          Divider(
            thickness: 1.h,
            color: const Color(0xffEBF0FF),
          ),
        ],
      ),
    );
  }
}
