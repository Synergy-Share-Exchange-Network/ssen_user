import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/size.dart';
import '../utils/constants/text_string.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_sharp),
          ),
          title: Text(
            SText.Editprofile,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: SSizes.defaultSpace, vertical: SSizes.defaultSpace),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                              image: AssetImage('asset/demo_image/demo1.JPG')),
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
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// e
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// end
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// end
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// end
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// end
                const SizedBox(
                  height: SSizes.spaceBtwInputField,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SSizes.spaceBtwItems / 2,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: SText.phoneNumber),
                    ),
                  ],
                ),
                //// end
              ],
            ),
          ),
        ));
  }
}
