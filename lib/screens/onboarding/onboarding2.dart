import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import '../../constants/sizes.dart';
import '../../routes/app_routes.dart';
import '../widgets/custom_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          children: [
            const SizedBox(height: 60),

            // Image
            Expanded(
              child: Image.asset('assets/logo.png', fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),

            // Title
            Text(
              AppStrings.onboardingTitle1,
              style: AppTextStyles.heading1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Subtitle
            Text(
              AppStrings.onboardingSubtitle1,
              style: AppTextStyles.bodyText,
              textAlign: TextAlign.center,
            ),

            const Spacer(),

            // Continue button
            CustomButton(
              text: 'Continue',
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              },
            ),
            const SizedBox(height: 12),

            // Skip to Login
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
