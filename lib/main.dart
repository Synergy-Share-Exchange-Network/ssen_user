import 'package:flutter/material.dart';
import 'package:ssen_user/intermediate.dart';
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

      // home: HomePage(),
      // home: Companyprofile(),
      // home: Purchase(),
      // home: const TermAndCondition(),

      // home: DesktopResponsive(),
      home: Intermediate(),
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
