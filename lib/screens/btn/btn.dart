import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/btn.dart';
import 'package:smart_store_1/screens/HomeScreen/categories.dart';
import 'package:smart_store_1/screens/btn/favorite_screen.dart';
import 'package:smart_store_1/screens/btn/notification_screen.dart';
import 'package:smart_store_1/screens/setting/setting_screen.dart';

import '../HomeScreen/homeScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedItem = 1;

  final List<BtnScreen> _screens = <BtnScreen>[
    const BtnScreen(title: 'Favorite', widget: FavoriteScreen()),
    const BtnScreen(title: 'Home', widget: HomeScreen()),
    const BtnScreen(title: 'Notification', widget: NotificationScreen()),
    const BtnScreen(title: 'Settings', widget: SettingScreen()),
    const BtnScreen(title: 'Categories', widget:CategoriesList()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedItem].widget,
      bottomNavigationBar: Container(
        // height: 75.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft:Radius.circular(30),topRight :Radius.circular(30)
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12,spreadRadius: 2,blurRadius: 3)
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft:Radius.circular(30),topRight :Radius.circular(30)
          ),
          child: BottomNavigationBar(

            backgroundColor: Colors.white,
            onTap: (int selectItem) {
              setState(() => _selectedItem = selectItem);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
           selectedItemColor: const Color( 0xFFFFBE00) ,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedItem,
            selectedIconTheme: const IconThemeData(
              size: 35,

              color: Color(0xFF7530FF),
               ),
            selectedLabelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
            ),
           iconSize: 25,

            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  // activeIcon: Icon(Icons.home_rounded),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories'),
            ],
          ),
        ),
      ),
    );
  }
}
