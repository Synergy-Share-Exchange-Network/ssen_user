import 'package:flutter/material.dart';
import 'package:ssen_user/utils/constants/colors.dart';
import 'package:ssen_user/utils/constants/image_Strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SColors.primary,
        elevation: 0,
        title: Text(
          'Synergy',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
