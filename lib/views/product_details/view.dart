import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/pages_appbar.dart';
import 'package:mega/views/cart/view.dart';
import 'package:mega/views/rates/view.dart';

import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PagesAppBar(
          text: "Product Name ....",
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              CarouselSlider(
                items: List.generate(
                  5,
                  (index) => AppImage(
                    Assets.images.product3.path,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                options: CarouselOptions(
                  height: 350.h,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    currentIndex = index;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: CircleAvatar(
                      radius: index == currentIndex ? 5.r : 4.r,
                      backgroundColor: index == currentIndex
                          ? const Color(0xffED1C24)
                          : const Color(0xff979797),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Product Name will dispaly here ",
                  style: TextStyle(
                    color: const Color(0xff333537),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AppImage(Assets.icons.svg.favorite),
              ]),
              SizedBox(height: 8.h),
              RatingBar.builder(
                itemSize: 20.sp,
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
              SizedBox(height: 16.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "\$299,43",
                  style: TextStyle(
                    color: const Color(0xff50555C),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text.rich(
                  TextSpan(
                      text: "\$534,33",
                      style: TextStyle(
                        color: const Color(0xff9098B1),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      ),
                      children: [
                        const TextSpan(
                            text: "   ",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                            )),
                        TextSpan(
                          text: "24% Off",
                          style: TextStyle(
                            color: const Color(0xffFB7181),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ]),
                ),
              ]),
              SizedBox(height: 22.h),
              Text(
                "Details",
                style: TextStyle(
                  color: const Color(0xffF57E2E),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 13.h),
              Text(
                "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                style: TextStyle(
                  color: const Color(0xff9098B1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Review Product",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RatesView()));
                  },
                  child: Text(
                    "See More",
                    style: TextStyle(
                      color: const Color(0xff898A8D),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ]),
              Row(children: [
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
                SizedBox(width: 8.w),
                Text(
                  "4.5",
                  style: TextStyle(
                    color: const Color(0xff9098B1),
                    fontWeight: FontWeight.w700,
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(width: 3.w),
                Text(
                  "(5 Review)",
                  style: TextStyle(
                    color: const Color(0xff9098B1),
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ),
              ]),
              SizedBox(height: 16.h),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  AppImage(
                    Assets.images.profilePicture.path,
                    fit: BoxFit.fill,
                    width: 48.w,
                    height: 48.w,
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
              Text(
                "You Might Also Like",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 17.h),
              SizedBox(
                height: 208.h,
                child: ListView.separated(
                  itemBuilder: (context, index) => const _ItemLike(),
                  separatorBuilder: (context, index) => SizedBox(width: 8.w),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 51.h),
              AppButton(
                bgColor: const Color(0xffBA6400),
                text: "Add To Cart",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CartView()));
                },
              ),
              SizedBox(height: 7.h),
            ]),
      ),
    );
  }
}

class _ItemLike extends StatelessWidget {
  const _ItemLike();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductDetailsView()));
          },
          child: AppImage(
            Assets.images.product2.path,
            height: 162.h,
            width: 155.w,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.r),
          child: InkWell(
            onTap: () {},
            child: AppImage(
              Assets.icons.svg.favorite,
              color: Colors.white,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ]),
      SizedBox(height: 4.h),
      SizedBox(
        width: 155.w,
        child: Center(
          child: Text.rich(
            TextSpan(
                text: "FS - Nike Air Max 270 React",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor,
                ),
                children: const [
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "\$299,43",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff50555C),
                    ),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "\$534,33",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9098B1),
                    ),
                  ),
                  TextSpan(text: "   "),
                  TextSpan(
                    text: "24% Off",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFB7181),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    ]);
  }
}
