import 'package:flutter/material.dart';

import 'package:ssen_user/Screens/login.dart';
import 'package:ssen_user/Screens/partial%20screen/purchase.dart';
import 'package:ssen_user/Screens/signup.dart';
import 'package:ssen_user/intermediate.dart';

import 'package:ssen_user/screens/about.dart';
import 'package:ssen_user/screens/change%20email/enter_new_password.dart';
import 'package:ssen_user/screens/change%20password/enter_new_password.dart';
import 'package:ssen_user/screens/components/announcement.dart';
import 'package:ssen_user/screens/components/home.dart';
import 'package:ssen_user/screens/components/subscribers.dart';
import 'package:ssen_user/screens/desktop_responsive.dart';

import 'package:ssen_user/screens/history.dart';
import 'package:ssen_user/screens/search/search_screen.dart';
import 'package:ssen_user/screens/setting.dart';
import 'package:ssen_user/screens/state%20pages/main_page.dart';

import 'package:ssen_user/services/app_routes.dart';
import 'package:ssen_user/services/theme/app_theme.dart';
import 'package:ssen_user/widget/company_profile_widget.dart';
import 'package:ssen_user/widget/history_widget.dart';

import 'Screens/company_profile_detail.dart';
import 'Screens/components/profile.dart';
import 'Screens/post_share_secondary.dart';
import 'Screens/profile.dart';
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

      // home: const About(),
      // home: const Announcment(),
      // home: EnterNewPassword(),
      home: EnterNewEmail(),

      // home: const TermAndCondition(),
      // home: MainPage(),

      // home: SignUp(),

      // home: HomePage(),
      // home: Companyprofile(),
      // home: Purchase(),
      // home: const TermAndCondition(),
      // home: MainPage(),

      // home: DesktopResponsive(),
      // home: Intermediate(),
      // home: SearchScreen(),

      // home: PostShareSecondary(),
      // home: const Subscribers(),
      // home: UserProfile(),

      // home: LoginScreen(),

      // home: HistoryWidget(),
      // home: Subscribers(),
      // home: CompanyProfileWidget(),

      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
