import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/helper_function.dart';
import 'package:ssen_user/widget/history_widget.dart';
import 'package:ssen_user/widget/news_widget.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = SHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: (MediaQuery.of(context).size.width > phoneSize)
          ? PreferredSize(preferredSize: Size.zero, child: AppBar())
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
                  (!isDark) ? SColors.lighGrey : SColors.homePageNavBar,
              leading: IconButton(
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  icon: const Icon(Icons.menu)),

              // elevation: 1,
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
            HistoryWidget(),
          ],
        ),
      ),
    );
  }
}
