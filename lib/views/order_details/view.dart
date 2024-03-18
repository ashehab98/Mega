import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/main_appbar.dart';
import 'package:mega/views/address/view.dart';

import '../../core/design/app_image.dart';
import '../../gen/assets.gen.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {





  // int _currentStep = 0;
  //
  // List<Step> _steps = [
  //   Step(
  //     title: Text('Step 1'),
  //     content: Text('This is the content of Step 1'),
  //   ),
  //   Step(
  //     title: Text('Step 2'),
  //     content: Text('This is the content of Step 2'),
  //   ),
  //   Step(
  //     title: Text('Step 3'),
  //     content: Text('This is the content of Step 3'),
  //   ),
  //   Step(
  //     title: Text('Step 4'),
  //     content: Text('This is the content of Step 4'),
  //   ),
  // ];
  //


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(text: "Order Details"),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [



              // SizedBox(
              //   height: 180.h,
              //   child: Stepper(
              //     type: StepperType.horizontal,
              //     currentStep: _currentStep,
              //     onStepContinue: () {
              //       setState(() {
              //         _currentStep < _steps.length - 1
              //             ? _currentStep += 1
              //             : _currentStep = 0;
              //       });
              //     },
              //     onStepCancel: () {
              //       setState(() {
              //         _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
              //       });
              //     },
              //     steps: _steps,
              //   ),
              // ),

AppImage(Assets.icons.svg.tracking,fit: BoxFit.fill),


              SizedBox(height: 24.h),
              Text(
                "Product",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 12.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  height: 104.h,
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
                          Text(
                            "Nike Air Zoom Pegasus\n36 Miami",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            "\$299,43",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ]),
                  ]),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: 2,
              ),
              SizedBox(height: 24.h),
              Text(
                "Shipping Details",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                padding: EdgeInsets.all(16.r),
                height: 164.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: const Color(0xffEBF0FF),
                  ),
                ),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date Shipping",
                          style: TextStyle(
                            color: const Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "January 16, 2020",
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
                          "POS Reggular",
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
                          "No. Resi",
                          style: TextStyle(
                            color: const Color(0xff9098B1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          "000192848573",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                  SizedBox(height: 12.h),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddressView()));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(
                              color: const Color(0xff9098B1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "2727 New  Owerri, Owerri,\n                Imo State 78410",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 16.h),
                ]),
              ),
              SizedBox(height: 46.h),
              Text(
                "Payment Details",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                padding: EdgeInsets.all(16.r),
                height: 164.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: const Color(0xffEBF0FF),
                  ),
                ),
                child: Column(children: [
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
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                      ]),
                ]),
              ),
              SizedBox(height: 13.h),
            ]),
      ),
    );
  }
}
