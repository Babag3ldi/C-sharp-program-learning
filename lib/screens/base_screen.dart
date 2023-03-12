import 'package:program_learning/screens/esasy_screen.dart';

import '../constants/color.dart';
import '../constants/icons.dart';
import '../constants/size.dart';
import '/screens/featuerd_screen.dart';
import 'package:flutter/material.dart';

import 'course_screen.dart';
import 'info_screen.dart';
import 'test_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    EsasyScreen(),
    TestScreen(),
    InfoScreen(),
    //FeaturedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.star_rate_rounded, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icFeatured,
              //   height: kBottomNavigationBarItemSize,
              // ),
              icon: Icon(Icons.star_rate_outlined, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icFeaturedOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "Tutorial",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.list_alt_rounded, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icLearning,
              //   height: kBottomNavigationBarItemSize,
              // ),
              icon:  Icon(Icons.list_alt_outlined, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icLearningOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "Test",
            ),
            // BottomNavigationBarItem(
            //   activeIcon: Image.asset(
            //     icWishlist,
            //     height: kBottomNavigationBarItemSize,
            //   ),
            //   icon: Image.asset(
            //     icWishlistOutlined,
            //     height: kBottomNavigationBarItemSize,
            //   ),
            //   label: "Wishlist",
            // ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.info_rounded, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icSetting,
              //   height: kBottomNavigationBarItemSize,
              // ),
              icon: Icon(Icons.info_outline, size: kBottomNavigationBarItemSize,),
              // Image.asset(
              //   icSettingOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "info",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
