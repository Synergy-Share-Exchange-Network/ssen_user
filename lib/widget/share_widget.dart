import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/services/theme/text_theme.dart';
import 'package:ssen_user/utils/constants/colors.dart';

class ShareWidget extends StatelessWidget {
  const ShareWidget({Key? key}) : super(key: key);

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
                  Text("Habesha Breweries ",
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
                      // Container(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      //   decoration: BoxDecoration(
                      //       color: Colors.lightBlue,
                      //       borderRadius: BorderRadius.circular(3)),
                      Text("Dec 01/2023",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      // Container(
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      //   decoration: BoxDecoration(
                      //       color: Colors.lightBlue,
                      //       borderRadius: BorderRadius.circular(3)),
                      // Text(" 10:30 AM",
                      //     style: TextStyle(color: Colors.grey, fontSize: 12)),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      // const Icon(
                      //   Iconsax.dollar_circle,
                      //   color: Colors.grey,
                      //   size: 10,
                      // ),
                      // const SizedBox(
                      //   width: 3,
                      // ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 151, 213, 242),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text("latest price: Br 500",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
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
