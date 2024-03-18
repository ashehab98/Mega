import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/views/pages/main.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Align(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImage(Assets.icons.search.path),
          SizedBox(height: 20.h),
          Text(
            "No Result Found ",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              bgColor: const Color(0xffBA6400),
              text: "Back To Home",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPageView(),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 150.h),
        ]),
      )),
    );
  }
}
