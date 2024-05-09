import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/Screens/edit_profile.dart';
import 'package:ssen_user/screens/assets.dart';
import 'package:ssen_user/screens/history.dart';
import 'package:ssen_user/screens/setting.dart';
import 'package:ssen_user/services/theme/text_theme.dart';
import 'package:ssen_user/utils/constants.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/constants/size.dart';
import 'package:ssen_user/utils/constants/text_string.dart';

import '../utils/helper_function.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (MediaQuery.of(context).size.width < phoneSize)
          ? AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_sharp),
              ),
              title: Text(
                SText.profile,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              centerTitle: true,
            )
          : AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 600,
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
              children: [
                Stack(children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                          image: AssetImage('asset/logo_image/goat.JPG')),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: SColors.primaryColor),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${SText.firstName}: Dawit Nigus ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '${SText.shares} :1000',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const EditProfile()));
                        },
                        child: const Text('Edit profile'))),
                const SizedBox(
                  height: 30,
                ),
                ProfileMenuWidget(
                    endicon: true,
                    icon: Iconsax.eye,
                    onpress: () {},
                    textcolor: Colors.blue,
                    title: 'Preview'),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                ProfileMenuWidget(
                    endicon: true,
                    icon: Iconsax.people,
                    onpress: () {},
                    textcolor: Colors.blue,
                    title: 'Posts'),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                ProfileMenuWidget(
                    endicon: true,
                    icon: Iconsax.data,
                    onpress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => History())));
                    },
                    textcolor: Colors.blue,
                    title: 'Hisory'),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                ProfileMenuWidget(
                    endicon: true,
                    icon: Iconsax.setting,
                    onpress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Assets())));
                    },
                    textcolor: Colors.blue,
                    title: 'Assets'),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                ProfileMenuWidget(
                    endicon: true,
                    icon: Iconsax.setting,
                    onpress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Setting())));
                    },
                    textcolor: Colors.blue,
                    title: 'Setting'),
                const SizedBox(
                  height: SSizes.spaceBtwItems,
                ),
                ProfileMenuWidget(
                    endicon: false,
                    icon: Iconsax.logout,
                    onpress: () {},
                    textcolor: Colors.red,
                    title: 'Sign Out')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onpress;
  final bool endicon;
  final Color? textcolor;
  const ProfileMenuWidget(
      {super.key,
      required this.endicon,
      required this.icon,
      required this.onpress,
      required this.textcolor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunction.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
            width: 1, color: Colors.grey), // Adjust border properties as needed
      ),
      child: ListTile(
          onTap: onpress,
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blue.withOpacity(0.1),
            ),
            child: Icon(
              icon,
              color: SColors.primary,
              size: 30,
            ),
          ),
          title: Text(
            title,
            style: dark
                ? STextTheme.darkTextTheme.bodyLarge
                : STextTheme.lightTextTheme.bodyLarge,
          ),
          trailing: endicon
              ? Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.grey,
                  ),
                )
              : null),
    );
  }
}
