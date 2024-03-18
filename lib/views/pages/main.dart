import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega/views/pages/account/view.dart';
import 'package:mega/views/pages/favorite/view.dart';
import 'package:mega/views/pages/home/view.dart';
import 'package:mega/views/pages/offer/view.dart';
import '../../gen/assets.gen.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeView(),
    const AccountView(),
    const OfferView(),
    const FavoriteView(),
  ];
  List<String> labels = [
    "Home",
    "Account",
    "Offer",
    "Favorite",
  ];

  List<String> icons = [
    Assets.icons.svg.home,
    Assets.icons.svg.user,
    Assets.icons.svg.offer,
    Assets.icons.svg.favorite,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff50555C),
        unselectedItemColor: const Color(0xff9098B1),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          icons.length,
          (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icons[index],
              color:
                  currentIndex == index ? const Color(0xff50555C) : const Color(0xff9098B1),
            ),
            label: labels[index],
          ),
        ),
      ),
    );
  }
}
