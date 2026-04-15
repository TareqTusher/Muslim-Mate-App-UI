import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/strings.dart';
import 'package:muslim_mate/presentation/screens/discover_page/discover_page.dart';
import 'package:muslim_mate/presentation/screens/home_page/home_page.dart';
import 'package:muslim_mate/presentation/screens/prayer_page/prayer_page.dart';
import 'package:muslim_mate/presentation/screens/prayer_page/profile_page/profile_page.dart';
import 'package:muslim_mate/presentation/screens/quran_page/quran_page.dart';

class CommonBottonNav extends StatefulWidget {
  const CommonBottonNav({super.key});

  @override
  State<CommonBottonNav> createState() => _CommonBottonNavState();
}

class _CommonBottonNavState extends State<CommonBottonNav> {
  List<Widget> pages = [
    HomePage(),
    DiscoverPage(),
    QuranPage(),
    PrayerPage(),
    ProfilePage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        selectedItemColor: AppColors.primary600,
        unselectedItemColor: AppColors.grey500,
        selectedLabelStyle: TextStyle(color: AppColors.primary600),
        unselectedLabelStyle: TextStyle(color: AppColors.grey500),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: Strings.home),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: Strings.discover,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: Strings.quran,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: Strings.prayer,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: Strings.profile,
          ),
        ],
      ),
    );
  }
}
