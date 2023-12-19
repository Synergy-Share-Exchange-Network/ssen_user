import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ssen_user/utils/constants/colors.dart';

import '../../utils/constants/global_varable.dart';
import '../../utils/helper_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentpage = 0;

  late PageController pageController;

  void navigationTapped(int _currentpage) {
    pageController.jumpToPage(_currentpage);
  }

  void onpagechange(int Page) {
    setState(() {
      _currentpage = Page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunction.isDarkMode(context);
    return Scaffold(
      body: PageView(
        children: homeScreen,
        controller: pageController,
        onPageChanged: onpagechange,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        color: SColors.lighGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              backgroundColor: dark ? Colors.black : Colors.white,
              color: dark ? Colors.white : Colors.grey,
              activeColor: dark ? Colors.white : Colors.grey,
              tabBackgroundColor: dark
                  ? const Color.fromRGBO(66, 66, 66, 1)
                  : SColors.primarybackground,
              gap: 8,
              padding: EdgeInsets.all(16),
              onTabChange: navigationTapped,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Subscribe',
                ),
                GButton(
                  icon: Icons.graphic_eq,
                  text: 'Analysis',
                ),
                GButton(
                  icon: Icons.newspaper,
                  text: 'News',
                ),
              ]),
        ),
      ),
    );
  }
}
