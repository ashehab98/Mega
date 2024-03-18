import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/design/account_page_button.dart';
import 'package:mega/gen/assets.gen.dart';
import 'package:mega/views/address/view.dart';
import 'package:mega/views/auth/login/view.dart';
import 'package:mega/views/delete_account/view.dart';
import 'package:mega/views/my_orders/view.dart';
import 'package:mega/views/profile/view.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
         "Account",
         style: TextStyle(
           fontWeight: FontWeight.w700,
           fontSize: 16.sp,
           color: Theme.of(context).primaryColor,
         ),
          ),
      ),
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              Divider(
                color: const Color(0xffEBF0FF),
                thickness: 1.sp,
              ),
              AccountButton(
                text: "Profile",
                image: Assets.icons.svg.user,
                color: const Color(0xffBA6400),
                page: const ProfileView(),
              ),
              AccountButton(
                text: "My Orders ",
                image: Assets.icons.svg.myorder,
                color: const Color(0xffBA6400),
                page: const MyOrdersView(),
              ),
              AccountButton(
                text: "Address",
                image: Assets.icons.svg.adress,
                color: const Color(0xffBA6400),
                page: const AddressView(),
              ),
              AccountButton(
                text: "Log out ",
                image: Assets.icons.svg.logout,
                color: const Color(0xffBA6400),
                page: const LoginView(),
              ),
              AccountButton(
                text: "Delete Account",
                image: Assets.icons.svg.trash,
                color: const Color(0xffED1C24),
                page: const DeleteAccountView(),
              ),
            ]),
      ),
    );
  }
}
