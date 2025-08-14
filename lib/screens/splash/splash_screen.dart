import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset('assets/logo.png', height: 90),
            const SizedBox(height: 2),
            //App name
            Text(
              AppStrings.appName,
              style: AppTextStyles.heading1.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
