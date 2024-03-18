import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/pages_appbar.dart';

import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';
import '../categories_details/view.dart';

class AllCategoriesView extends StatefulWidget {
  const AllCategoriesView({super.key});

  @override
  State<AllCategoriesView> createState() => _AllCategoriesViewState();
}

class _AllCategoriesViewState extends State<AllCategoriesView> {
  // int currentIndex = 0;
  //
  // List<Widget> pages = [
  //   HomeView(),
  //   AccountView(),
  //   OfferView(),
  //   FavoriteView(),
  // ];
  //
  // List<String> labels = [
  //   "Home",
  //   "Account",
  //   "Offer",
  //   "Favorite",
  // ];
  //
  // List<String> icons = [
  //   Assets.icons.svg.home,
  //   Assets.icons.svg.user,
  //   Assets.icons.svg.offer,
  //   Assets.icons.svg.favorite,
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PagesAppBar(
          text: "All Categories",
        ),
        body: ListView(children: [
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 1,
            ),
            itemCount: 18,
            itemBuilder: (context, index) => const _ItemCategory(),
          ),
        ]),
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedItemColor: Color(0xff50555C),
        //   unselectedItemColor: Color(0xff9098B1),
        //   backgroundColor: Colors.white,
        //   currentIndex: currentIndex,
        //   onTap: (value) {
        //     currentIndex = value;
        //     setState(() {});
        //   },
        //   type: BottomNavigationBarType.fixed,
        //   items: List.generate(
        //     icons.length,
        //         (index) => BottomNavigationBarItem(
        //       icon: SvgPicture.asset(
        //         icons[index],
        //         color:
        //         currentIndex == index ? Color(0xff50555C) : Color(0xff9098B1),
        //       ),
        //       label: labels[index],
        //     ),
        //   ),
        // ),
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
          height: 110.h,
          width: 110.w,
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: 110.w,
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
