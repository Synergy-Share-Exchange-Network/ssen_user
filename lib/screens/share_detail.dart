import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/widget/share_detail_element_widget.dart';

import '../widget/analytics/graph1.dart';

class ShareDetail extends StatelessWidget {
  const ShareDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.blue,
              size: 20,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Share Detail',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.blue,
            // fontSize: 27,
            // fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('asset/logo_image/goat.jpg'),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                child: const Text(
                  "Habesha Breweries S.C",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Iconsax.location,
                    color: Colors.grey,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "addis ababa",
                    // style: STextTheme.lightTextTheme.bodySmall
                    //     ?.copyWith(color: Colors.blue),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Iconsax.location,
                    color: Colors.grey,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "brewery",
                    // style: STextTheme.lightTextTheme.bodySmall
                    //     ?.copyWith(color: Colors.blue),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Text(
                  "Habesha Breweries S.C Founded by 8,000 proud Ethiopian shareholders who were moved by the vision of reaching and connecting with Ethiopians, Habesha Breweries.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/logo_image/Stock.jpg"))),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const ShareDetailElementWidget(
                  
                    title: "Unit share price",
                    content1: "ETB(birr)",
                    content2: "500.00",
                    title2: "Number of buyers",
                    content11: "max: 200 buyers",
                    content22: "min: 100 buyers",
                  ),
                  const ShareDetailElementWidget(
                    title: "Number of shares",
                    content1: "offering 40,000 shares",
                    content2: "200 units",
                    title2: "Divident",
                    content11: "2.5 % of profit",
                    content22: "after 2 years",
                  ),
                  const ShareDetailElementWidget(
                    title: "minimum payment",
                    content1: "50 %",
                    content2: "half of the share price",
                    title2: "Number of shares to buy",
                    content11: "max:1000 shares",
                    content22: "min: 500 shares+",
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Iconsax.tick_circle,
                    // color: Colors.black,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    child: const Text(
                      "proclamation number: 45363829836345",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Iconsax.tick_circle,
                    // color: Colors.black,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    child: const Text(
                      "saving account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Iconsax.arrow_down_14,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Iconsax.tick_circle,
                    // color: Colors.black,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    child: const Text(
                      "requirment",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Iconsax.arrow_down_14,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Iconsax.tick_circle,
                    // color: Colors.black,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 70,
                    child: const Text(
                      "time to return remain payment",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Iconsax.arrow_down_14,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              LineChartgraph(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                        child: Text("BUY",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
