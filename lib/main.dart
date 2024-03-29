import 'package:fleact_task/ui/screens/add_familyMember_screen/add_family_screen.dart';
import 'package:fleact_task/ui/screens/login_screen/login_screen.dart';
import 'package:fleact_task/ui/screens/update_profile/update_profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fleact_task/core/constants/app_colors.dart';
import 'package:fleact_task/routes.dart';
import 'package:fleact_task/ui/screens/main_screen/main_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          // appBarTheme: const AppBarTheme(
          //   color: AppColors.primary,
          // ),

          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.secondary,
          ),

          textTheme: GoogleFonts.poppinsTextTheme().copyWith(

            headlineLarge: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22.px,
              color: Colors.black,
            ),
            headlineMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.px,
              color: Colors.black,
            ),
            headlineSmall: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.px,
              color: Colors.black,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
            error: AppColors.danger,
          ),
          useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),

        initialRoute: UpdateProfileScreen.routeName,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      );
    });
  }
}
