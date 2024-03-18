import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/Home_appbar/view.dart';
import '../../../core/design/app_image.dart';
import '../../../gen/assets.gen.dart';
import '../../all_categories/view.dart';
import '../../categories_details/view.dart';
import '../../product_details/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              CarouselSlider(
                items: List.generate(
                  5,
                  (index) => AppImage(
                    Assets.images.sliderimage.path,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,

                  ),
                ),
                options: CarouselOptions(
                  height: 139.h,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    currentIndex = index;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 7.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: CircleAvatar(
                      radius: index == currentIndex ? 5.r : 4.r,
                      backgroundColor: index == currentIndex
                          ? const Color(0xff50555C)
                          : const Color(0xff979797),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllCategoriesView()));
                    },
                    child: Text(
                      "All Categories",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const _ItemCategory(),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              AppImage(
                Assets.images.watchsale.path,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 23.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flash Sale",
                    style: TextStyle(
                      color: const Color(0xffED1C24),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 13.h),
                  SizedBox(
                    height: 208.h,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const _ItemSale(),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 29.h),
              Text(
                "You May Like ",
                style: TextStyle(
                  color: const Color(0xff50555C),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7.h),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 31.w,
                  mainAxisSpacing: 29.h,
                  childAspectRatio: .8,
                ),
                itemCount: 8,
                itemBuilder: (context, index) => const _ItemLike(),
              ),
            ]),
      ),
    );
  }
}

class _ItemCategory extends StatelessWidget {
  const _ItemCategory();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CategoriesDetailsView()));
      },
      child: Column(children: [
        AppImage(
          Assets.images.product.path,
          height: 99.h,
          width: 99.w,
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: 99.w,
          child: Center(
            child: Text(
              "Category Name",
              style: TextStyle(
                color: const Color(0xff50555C),
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class _ItemSale extends StatelessWidget {
  const _ItemSale();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ProductDetailsView()));
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
            onTap: () {

            },
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

class _ItemLike extends StatelessWidget {
  const _ItemLike();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ProductDetailsView()));
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
            onTap: () {

            },
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
