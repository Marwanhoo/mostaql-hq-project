import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/screens/chat_screen.dart';
import 'package:mostaql_hq_project/screens/my_package_screen.dart';
import 'package:mostaql_hq_project/screens/orders_screen.dart';
import 'package:mostaql_hq_project/screens/profile_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    const MyPackageScreen(),
    const OrdersScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/my_package.svg",
              color: currentIndex == 0 ? AppColors.primaryColor : null,
            ),
            label: "Packages",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/orders.svg",
              color: currentIndex == 1 ? AppColors.primaryColor : null,
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/chat.svg",
              color: currentIndex == 2 ? AppColors.primaryColor : null,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/profile.svg",
              color: currentIndex == 3 ? AppColors.primaryColor : null,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
