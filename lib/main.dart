import 'package:flutter/material.dart';
import 'package:ssen_user/intermediate.dart';
import 'package:ssen_user/screens/FAQ.dart';
import 'package:ssen_user/screens/announcment_detail.dart';
import 'package:ssen_user/screens/assets.dart';
import 'package:ssen_user/screens/components/announcement.dart';
import 'package:ssen_user/screens/components/subscribers.dart';
import 'package:ssen_user/screens/history.dart';
import 'package:ssen_user/services/app_routes.dart';
import 'package:ssen_user/services/theme/app_theme.dart';
import 'package:ssen_user/widget/faq_element_widget.dart';
import 'package:ssen_user/widget/history_widget.dart';
import 'package:ssen_user/widget/secondary_profile_widget.dart';

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

      // home: const TermAndCondition(),
      // home: MainPage(),

      // home: SignUp(),

      // home: HomePage(),
      // home: Companyprofile(),
      // home: Purchase(),
      // home: const TermAndCondition(),

      // home: DesktopResponsive(),
      // home: Intermediate(),
      // home: SearchScreen(),

      // home: PostShareSecondary(),
      // home: const Subscribers(),
      // home: UserProfile(),

      // home: LoginScreen(),

      // home: HistoryWidget(),
      // home: History(),
      // home: Subscribers(),
      // home: CompanyProfileWidget(),
      // home: Assets(),
      // home: AnnouncementDetail(),
      // home: SecondaryProfileWidget(),
      home: Faq(),
      // home: FaqElementWidget(),

      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
