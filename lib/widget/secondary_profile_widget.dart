import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants/colors.dart';

import '../../services/theme/text_theme.dart';

class SecondaryProfileWidget extends StatelessWidget {
  const SecondaryProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: SColors.lighGrey,
      child: Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(14),
        //   border: Border.all(
        //       width: 1,
        //       color: Colors.grey), // Adjust border properties as needed
        // ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('asset/logo_image/goat.jpg'),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dawit Negus",
                      style: STextTheme.lightTextTheme.headlineSmall),
                  Row(
                    children: [
                      const Icon(
                        Iconsax.location,
                        // color: Colors.black,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Addis Ababa, Ethiopia",
                        // style: STextTheme.lightTextTheme.bodySmall
                        //     ?.copyWith(color: Colors.blue),
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Iconsax.dollar_circle,
                            color: Colors.blue,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "10k+ shares",
                            style: STextTheme.lightTextTheme.bodySmall!
                                .copyWith(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Iconsax.dollar_circle,
                            color: Colors.blue,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "1M Invested",
                            style: STextTheme.lightTextTheme.bodySmall!
                                .copyWith(color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
