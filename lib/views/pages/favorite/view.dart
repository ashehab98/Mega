import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/pages_appbar.dart';

import '../../../core/design/app_image.dart';
import '../../../gen/assets.gen.dart';
import '../../product_details/view.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PagesAppBar(text: "Favorite List", ),
        body: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 29.h,
            childAspectRatio: .8,
          ),
          itemCount: 2,
          itemBuilder: (context, index) => const _ItemFavorites(),
        ),
      ),
    );
  }
}

class _ItemFavorites extends StatelessWidget {
  const _ItemFavorites();

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
              Assets.icons.svg.trash,
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
                      decoration: TextDecoration.lineThrough,
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
