import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/screens/FAQ.dart';
import 'package:ssen_user/screens/about.dart';
import 'package:ssen_user/screens/components/donation.dart';
import 'package:ssen_user/screens/components/public.dart';
import 'package:ssen_user/screens/components/secondary.dart';
import 'package:ssen_user/screens/setting.dart';
import 'package:ssen_user/screens/terms%20and%20condition.dart';
import 'package:ssen_user/services/theme/text_theme.dart';
import 'package:ssen_user/utils/constants.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/helper_function.dart';
import 'package:ssen_user/widget/share_widget.dart';

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
        appBar: (MediaQuery.of(context).size.width > phoneSize)
            ? AppBar(
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: TabBar(
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
                    unselectedLabelColor:
                        (!dark) ? SColors.black : SColors.lighGrey,
                    indicatorWeight: 4.0,
                    isScrollable: true,
                  ),
                ),
              )
            : AppBar(
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
                backgroundColor:
                    (!dark) ? SColors.lighGrey : SColors.homePageNavBar,
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
                  unselectedLabelColor:
                      (!dark) ? SColors.black : SColors.lighGrey,
                  indicatorWeight: 4.0,
                  isScrollable: true,
                ),
                // elevation: 1,
              ),
        body: (const TabBarView(children: [
          Public(),
          Public(),
          Donation(),
          Secondary(),
        ])),
      ),
    );
  }
}
