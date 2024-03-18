import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';

import '../../core/design/app_image.dart';
import '../../core/design/main_appbar.dart';
import '../../gen/assets.gen.dart';
import '../write_review/view.dart';

class RatesView extends StatelessWidget {
  const RatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(
          text: "5 Review",
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        AppImage(
                          Assets.images.profilePicture.path,
                          fit: BoxFit.fill,
                          width: 48.w,
                          height: 48.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "James Lawson",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              RatingBar.builder(
                                itemSize: 15.sp,
                                initialRating: 4,
                                minRating: 1,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ]),
                      ]),
                      SizedBox(height: 16.h),
                      Text(
                        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                        style: TextStyle(
                          color: const Color(0xff9098B1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        "December 10, 2016",
                        style: TextStyle(
                          color: const Color(0xff9098B1),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15.h),
                    ]),
                separatorBuilder: (context, index) => SizedBox(height: 5.h),
                itemCount: 4,
              ),
              SizedBox(height: 59.h),
              AppButton(bgColor: const Color(0xffBA6400), text: "Write Review", onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const WriteReviewView()));
              },),
              SizedBox(height: 23.h),
            ]),
      ),
    );
  }
}
