import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ssen_user/widget/news_widget.dart';

class Announcment extends StatelessWidget {
  const Announcment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
          ],
        ),
      ),
    );
  }
}
