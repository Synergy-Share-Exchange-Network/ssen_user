import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 135,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 135,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/logo_image/goat.jpg"))),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.pink,
                    margin: EdgeInsets.all(5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Major Milestone Reached!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Text(
                            "June 12   16:30",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          // height: 90,
                          child: Text(
                            "The International Finance Corporation (IFC) announced an investment of up to € 50 million in Habesha Breweries S.C. in a press release earlier this week. ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 1),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(109, 33, 149, 243),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Text("Habesha Breweries S.C",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
