import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';


class AccountButton extends StatefulWidget {
  final String text,image;
  final dynamic page;
  final Color color;
   const AccountButton({super.key, required this.text, required this.image, required this.color, required this.page,  });

  @override
  State<AccountButton> createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(
          context, MaterialPageRoute(builder: (context) => widget.page));},
      child: SizedBox(
        height: 56.h,
        child: Row(children: [
           AppImage(
            widget.image ,
            color: widget.color,
          ),
          SizedBox(width: 16.w),
          Text(
            widget.text,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          )
        ]),
      ),
    );
  }
}
