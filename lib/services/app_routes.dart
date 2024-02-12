import 'package:flutter/material.dart';
import 'package:ssen_user/screens/change%20email/confirm_account_change_email.dart';
import 'package:ssen_user/screens/change%20email/enter_new_password.dart';
import 'package:ssen_user/screens/change%20password/confirm_account.dart';
import 'package:ssen_user/screens/change%20password/enter_new_password.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case EnterNewPassword.route:
        return MaterialPageRoute(builder: (_) => const EnterNewPassword());
      case ConfirmAccount.route:
        return MaterialPageRoute(builder: (_) => const ConfirmAccount());
      case EnterNewEmail.route:
        return MaterialPageRoute(builder: (_) => const EnterNewEmail());
      case ConfirmAccountChangeEmail.route:
        return MaterialPageRoute(
            builder: (_) => const ConfirmAccountChangeEmail());
      default:
        return null;
    }
  }
}
