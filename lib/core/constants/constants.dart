import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBarTheme getMyAppBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: getMyMaterialColor(),
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    ),
  );
}

MaterialColor getMyMaterialColor() {
  Color color = const Color(0xff223263);

  return MaterialColor(
    color.value,
    {
      50: color.withOpacity(.1),
      100: color.withOpacity(.2),
      200: color.withOpacity(.3),
      300: color.withOpacity(.4),
      400: color.withOpacity(.5),
      500: color.withOpacity(.6),
      600: color.withOpacity(.7),
      700: color.withOpacity(.8),
      800: color.withOpacity(.9),
      900: color,
    },
  );
}
