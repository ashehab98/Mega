import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/main_appbar.dart';

import '../../core/design/write_input.dart';

class WriteReviewView extends StatelessWidget {
  const WriteReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Write Review"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Text(
                "Please write Overall level of satisfaction with your shipping / Delivery Service",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 16.h),
              Row(children: [
                RatingBar.builder(
                  itemSize: 30.sp,
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
                SizedBox(width: 8.w),
                Text(
                  "4/5",
                  style: TextStyle(
                    color: const Color(0xff9098B1),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                ),
              ]),
              SizedBox(height: 24.h),
              Text(
                "Write Your Review",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 12.h),
              const WriteInput(hintText: "Write your review here"),
              SizedBox(height: 266.h),
              AppButton(
                bgColor: const Color(0xffBA6400),
                text: "Send Review",
                onPress: () {},
              ),
              SizedBox(height: 26.h),
            ]),
      ),
    );
  }
}
