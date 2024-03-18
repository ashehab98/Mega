import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/views/cart/view.dart';

import '../../../gen/assets.gen.dart';
import '../../../views/search_result/view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 21.w, top: 10.h, bottom: 14.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          width: 262.w,
          height: 41.h,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5.r),
              ),
              fillColor: const Color(0xffF3F3F3),
              filled: true,
              hintText: "Search Product",
              hintStyle: TextStyle(
                color: const Color(0xff9098B1),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  bottom: 4.h,
                  right: 8.w,
                  left: 5.w,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const SearchResultView()));
                  },
                  child: AppImage(
                    Assets.icons.svg.search,
                    height: 16.h,
                    width: 16.w,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(icon: AppImage(Assets.icons.svg.cart), onPressed: () { Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CartView())); },),
      ]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70.h);
}
