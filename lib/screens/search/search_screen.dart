import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/services/theme/text_theme.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/constants/image_Strings.dart';
import 'package:ssen_user/utils/helper_function.dart';
import 'package:ssen_user/widget/company_profile_widget.dart';
import 'package:ssen_user/widget/secondary_profile_widget.dart';
import 'package:ssen_user/widget/subscription_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark = SHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        actions: const [
          // Icon(Iconsax.notification),
          // SizedBox(
          //   width: 10,
          // ),
          Icon(Iconsax.close_circle),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: (!isDark) ? SColors.lighGrey : SColors.homePageNavBar,
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),

        // elevation: 1,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomChip(
                      icon: Iconsax.align_horizontally,
                      text: 'share',
                      isSelected: true,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomChip(
                      icon: Iconsax.people,
                      text: 'Public',
                      isSelected: false,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomChip(
                      icon: Iconsax.document1,
                      text: 'Dontaion',
                      isSelected: false,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomChip(
                      icon: Iconsax.personalcard,
                      text: 'Secondary',
                      isSelected: false,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomChip(
                      icon: Iconsax.book,
                      text: 'news',
                      isSelected: false,
                    ),

                    // CustomChip(title: "All"),
                    // CustomChip(title: "T-shert"),
                    // CustomChip(title: "Pants"),
                    // CustomChip(title: "Human Hair"),
                    // CustomChip(title: "Foods"),
                    // CustomChip(title: "Book"),
                    // CustomChip(title: "More"),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SecondaryProfileWidget(),
                  SecondaryProfileWidget(),
                  SecondaryProfileWidget(),
                  SecondaryProfileWidget(),
                  SecondaryProfileWidget(),
                ],
              ),
            )
            // Column(
            //   children: [
            //     // Product(
            //     //   product: car,
            //     //   shopOwner: seller,
            //     // ),
            //     // Product(
            //     //   product: car,
            //     //   shopOwner: seller,
            //     // ),
            //     // Product(
            //     //   product: car,
            //     //   shopOwner: seller,
            //     // ),
            //     // Product(
            //     //   product: car,
            //     //   shopOwner: seller,
            //     // ),
            //     // Product(
            //     //   product: car,
            //     //   shopOwner: seller,
            //     // ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: (isSelected) ? SColors.primary : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                  color: SColors.primaryColor) // Adjust the value as needed
              ),
          padding: EdgeInsets.all(
              16.0), // Adjust the padding to increase the height and width
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: (isSelected) ? Colors.white : SColors.primary,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 48,
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: (isSelected) ? Colors.white : SColors.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniCompanySub extends StatelessWidget {
  const MiniCompanySub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
      width: 60,
      // height: 80,
      child: Column(children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: SColors.primary, width: 2.0),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(SImages.lightAppLogo))),
        ),
        // const Expanded(flex: 1, child: SizedBox()),
        const SizedBox(
          width: 10,
        ),

        const Text(
          "Absinnia Bank",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ]),
    );
  }
}
