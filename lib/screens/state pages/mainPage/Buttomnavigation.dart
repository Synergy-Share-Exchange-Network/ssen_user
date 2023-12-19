import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ButtomNavigation extends StatelessWidget {
  const ButtomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
        NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
      ]),
    );
  }
}
