import 'package:fleact_task/ui/screens/add_familyMember_screen/add_family_screen.dart';
import 'package:fleact_task/ui/screens/login_screen/login_screen.dart';
import 'package:fleact_task/ui/screens/register_screen/register_screen.dart';
import 'package:fleact_task/ui/screens/update_profile/update_profile_screen.dart';


import 'package:flutter/material.dart';

import 'package:fleact_task/ui/screens/main_screen/main_screen.dart';
import 'package:fleact_task/ui/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case SplashScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());

      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RegisterScreen.routeName:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case AddFamilyMemberScreen.routeName:
        return MaterialPageRoute(builder: (_) => AddFamilyMemberScreen());
      case UpdateProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => UpdateProfileScreen());

      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
