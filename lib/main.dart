import 'package:flutter/material.dart';
import 'package:ssen_user/Screens/login.dart';
import 'package:ssen_user/Screens/signup.dart';
import 'package:ssen_user/screens/about.dart';
import 'package:ssen_user/screens/setting.dart';
import 'package:ssen_user/screens/state%20pages/main_page.dart';
import 'package:ssen_user/services/app_routes.dart';
import 'package:ssen_user/services/theme/app_theme.dart';

import 'screens/terms and condition.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Synergy Share Exchange Network',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SappTheme.lightTheme,
      darkTheme: SappTheme.darkTheme,

      home: const About(),
      // home: const TermAndCondition(),
      // home: MainPage(),
      // home: MainPage(),

      // home: LoginScreen(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
