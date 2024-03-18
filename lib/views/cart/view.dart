import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/app_button.dart';
import 'package:mega/core/design/app_image.dart';
import 'package:mega/core/design/main_appbar.dart';
import 'package:mega/gen/assets.gen.dart';

import '../ship_to/view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Your Cart"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        height: 110.h,
                        padding: EdgeInsets.only(
                            top: 16.h, bottom: 16.h, right: 12.w, left: 12.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: const Color(0xffEBF0FF),
                          ),
                        ),
                        child: Row(children: [
                          AppImage(
                            Assets.images.product3.path,
                            width: 68.w,
                            height: 72.h,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 12.w),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    "Nike Air Zoom Pegasus\n36 Miami",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  SizedBox(width: 66.w),
                                  Row(children: [
                                    AppImage(
                                      Assets.icons.svg.favorite,
                                    ),
                                    SizedBox(width: 3.w),
                                    AppImage(
                                      Assets.icons.svg.trash,
                                      color: const Color(0xff9098B1),
                                    ),
                                  ]),
                                ]),
                                SizedBox(height: 22.h),
                                Row(children: [
                                  Text(
                                    "\$299,43",
                                    style: TextStyle(
                                      color: const Color(0xff40BFFF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 88.w),
                                  Container(
                                    height: 24.h,
                                    width: 104.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      border: Border.all(
                                        color: const Color(0xffEBF0FF),
                                        width: 1.sp,
                                      ),
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                if (count > 1) {
                                                  count--;
                                                  setState(() {});
                                                }
                                              },
                                              child: const Icon(
                                                Icons.remove,
                                                color: Color(0xff9098B1),
                                              )),
                                          Container(
                                            height: 24.h,
                                            width: 40.w,
                                            color: const Color(0xffEBF0FF),
                                            child: Center(
                                              child: Text(
                                                count.toString(),
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              count++;
                                              setState(() {});
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Color(0xff9098B1),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ]),
                              ]),
                        ]),
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: 2),
              SizedBox(height: 32.h),
              SizedBox(
                height: 56.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: const Color(0xff9098B1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    hintText: "Enter Cupon Code",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xff40BFFF),
                        width: 1.sp,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffEBF0FF),
                        width: 1.sp,
                      ),
                    ),
                    suffixIcon: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffBA6400),
                        minimumSize: Size(87.w, 56.h),
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Apply",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(16.r),
                height: 164.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: const Color(0xffEBF0FF),
                  ),
                ),
                child:
                Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Text(
                            "Items ",
                            style: TextStyle(
                              color: const Color(0xff9098B1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "(3)",
                            style: TextStyle(
                              color: const Color(0xff9098B1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ]),
                        Text(
                          "\$598.86",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                  SizedBox(height: 12.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyle(
                            color: const Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "\$40.00",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                  SizedBox(height: 12.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Import charges",
                          style: TextStyle(
                            color: const Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "\$128.00",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                  SizedBox(height: 12.h),
                  Text(
                    "_ " * 30,
                    style: const TextStyle(
                      color: Color(0xffEBF0FF),
                     ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "\$766.86",
                          style: TextStyle(
                            color: const Color(0xff40BFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                ]),
              ),
              SizedBox(height: 16.h),
              AppButton(bgColor: const Color(0xffBA6400), text: "Check Out", onPress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const ShipToView()));
              },),
              SizedBox(height: 21.h),

            ]),
      ),
    );
  }
}
