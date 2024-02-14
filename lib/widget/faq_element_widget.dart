import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ssen_user/utils/constants/colors.dart';

class FaqElementWidget extends StatelessWidget {
  const FaqElementWidget({
    Key? key,
    required this.questions,

    // required this.function,
  }) : super(key: key);
  final String questions;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      color: SColors.lighGrey,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
            const Icon(
              Iconsax.message_question,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 130,
              child: Text(
                questions,
                style: TextStyle(color: Colors.blue, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Iconsax.arrow_bottom,
              color: Colors.blue,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
