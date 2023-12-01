import 'package:flutter/material.dart';

import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/constants/image_Strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SColors.primary,
        elevation: 0,
        title: Text(
          'Synergy',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ]
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/helper_function.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool dark = SHelperFunction.isDarkMode(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Iconsax.notification),
            SizedBox(
              width: 10,
            ),
            Icon(Iconsax.search_normal),
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: (!dark) ? SColors.lighGrey : SColors.homePageNavBar,
          leading: IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(Icons.menu)),
          bottom: TabBar(
            tabs: const [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Public",
              ),
              Tab(
                text: "Donation",
              ),
              Tab(
                text: "Seconondry",
              ),
            ],
            labelColor: (!dark) ? SColors.primaryColor : SColors.white,
            unselectedLabelColor: (!dark) ? SColors.black : SColors.lighGrey,
            indicatorWeight: 4.0,
            isScrollable: true,
          ),
          // elevation: 1,
        ),
        body: TabBarView(children: [
          Container(
            color: SColors.darkerGery,
          ),
          Container(),
          Container(),
          Container()
        ]),

      ),
    );
  }
}
