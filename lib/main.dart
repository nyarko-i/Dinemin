import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Constants
import 'constants/colors.dart';
import 'constants/strings.dart';

// Routes
import 'routes/app_routes.dart';

// Screens
import 'screens/splash/splash_screen.dart';
import 'screens/onboarding/onboarding1.dart';
import 'screens/onboarding/onboarding2.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,

      // Themes
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundLight,
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryGreen,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.backgroundDark,
        textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryGreen,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.light,

      // Routes
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.onboarding1: (context) => const Onboarding1(),
        AppRoutes.onboarding2: (context) => const Onboarding2(),
        AppRoutes.signup: (context) => const SignupScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}
