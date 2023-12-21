import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ssen_user/utils/constants/custom_text_style.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 200,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(13, 29, 29, 29),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Habesha Breweries S.C",
                  style: CustomTextStyle.titleBold,
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                      "You have purchased 500 shares valued at Br. 5,000,000 from Habesha SC. at Dec-19-2023  4:13 PM(EAT). ",
                      style: Theme.of(context).textTheme.bodyMedium

                      // overflow: TextOverflow.ellipsis,
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "view more",
                      style: TextStyle(color: Colors.blue, fontSize: 13),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
