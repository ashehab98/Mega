import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/gen/assets.gen.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String text;

  const MainAppBar({
    super.key,
    required this.text,
  });

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(90.h);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Row(children: [
         IconButton(
           onPressed: () {
             Navigator.pop(context);
           },
           icon: AppImage(
             Assets.icons.svg.wideleft,
             fit: BoxFit.fill,
             height: 24.h,
             width: 24.w,
           ),
         ),
         SizedBox(width: 5.w),
         Text(
           widget.text,
           style: TextStyle(
             fontWeight: FontWeight.w700,
             fontSize: 16.sp,
             color: Theme.of(context).primaryColor,
           ),
         ),
       ]),
       Divider(
         thickness: 1.h,
         color: const Color(0xffEBF0FF),
       ),
     ],
      );
  }
}
