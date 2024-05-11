import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssen_user/responsive.dart';
import 'package:ssen_user/screens/signup.dart';
import 'package:ssen_user/services/app_routes.dart';
import 'package:ssen_user/services/theme/app_theme.dart';

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

      home: Responsive(),
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

      // home: Responsive(),
      // home: AnnouncementDetail(),
      // home: SecondaryProfileWidget(),
      // home: Faq(),
      // home: HistoryDetail(),
      // home: FaqElementWidget(),
      // home: ShareDetail(),
      // home: SecondaryUserProfile(),
      // home: Payment_preview(),
      // home: DonationDetail(),
      // home: LoginScreen(),
      // home: SignUp(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
