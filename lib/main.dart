import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Import constants
import 'constants/colors.dart';
import 'constants/styles.dart';
import 'constants/strings.dart';

// Screens
import 'screens/splash/splash_screen.dart';

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

      // Light Theme
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundLight,
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryGreen,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundLight,
          foregroundColor: AppColors.textDark,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryGreen,
            foregroundColor: Colors.white,
            textStyle: AppTextStyles.buttonText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),

      // Dark Theme
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.backgroundDark,
        textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryGreen,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundDark,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryGreen,
            foregroundColor: Colors.white,
            textStyle: AppTextStyles.buttonText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
      ),

      // Default to light mode but allow dark mode check
      themeMode: ThemeMode.light,

      // Start screen
      home: const SplashScreen(),
    );
  }
}
