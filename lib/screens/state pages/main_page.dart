import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const route = "main_page_state";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  // final screens = [Home(), Subscription(), Favorite(), Cart(), Order()];
  final screens = [
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
    Center(child: Text("5")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: const CustomDrawer(),
        body: IndexedStack(
          children: screens,
          index: currentIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: (index) => setState(() => currentIndex = index),
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_rounded),
                label: "Investment",
                // backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: "Subscribed",
                // backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.insights_rounded),
                label: "Analytics",
                // backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_rounded),
                label: "Announcements",
                // backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded),
                label: "Profile",
                // backgroundColor: Colors.blue
              ),
            ]));
  }
}
