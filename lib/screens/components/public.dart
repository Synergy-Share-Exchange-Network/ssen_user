import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ssen_user/widget/share_widget.dart';

class Public extends StatelessWidget {
  const Public({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
            ShareWidget(),
          ],
        ),
      ),
    );
  }
}
