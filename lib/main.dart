import 'package:flutter/material.dart';
import 'package:ssen_user/Screens/signup.dart';
import 'package:ssen_user/intermediate.dart';
import 'package:ssen_user/responsive.dart';
import 'package:ssen_user/screens/FAQ.dart';
import 'package:ssen_user/screens/announcment_detail.dart';
import 'package:ssen_user/screens/assets.dart';
import 'package:ssen_user/screens/company_profile_detail.dart';
import 'package:ssen_user/screens/components/announcement.dart';
import 'package:ssen_user/screens/components/company_profile_home.dart';
import 'package:ssen_user/screens/components/subscribers.dart';
import 'package:ssen_user/screens/desktop_responsive.dart';
import 'package:ssen_user/screens/history.dart';
import 'package:ssen_user/screens/history_detail.dart';
import 'package:ssen_user/screens/login.dart';
import 'package:ssen_user/screens/partial%20screen/purchase.dart';
import 'package:ssen_user/screens/payment_preview.dart';
import 'package:ssen_user/screens/post_share_secondary.dart';
import 'package:ssen_user/screens/profile.dart';
import 'package:ssen_user/screens/secondary_user_profile.dart';
import 'package:ssen_user/screens/share_detail.dart';
import 'package:ssen_user/screens/state%20pages/main_page.dart';
import 'package:ssen_user/screens/terms%20and%20condition.dart';
import 'package:ssen_user/services/app_routes.dart';
import 'package:ssen_user/services/theme/app_theme.dart';
import 'package:ssen_user/widget/company_profile_widget.dart';
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
      // home: PostShareSecondary(),
      // home: Purchase(),
      // home: const TermAndCondition(),

      // home: DesktopResponsive(),
      // home: PostShareSecondary(),
      // home: Purchase(),
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
      // home: CompanyHome(),

      // home: Assets(),
      // home: AnnouncementDetail(),
      // home: SecondaryProfileWidget(),
      home: Faq(),
      // home: HistoryDetail(),
      // home: FaqElementWidget(),
      // home: ShareDetail(),
      // home: SecondaryUserProfile(),
      // home: Payment_preview(),

      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
