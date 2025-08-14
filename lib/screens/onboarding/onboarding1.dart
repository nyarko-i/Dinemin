import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import '../../constants/sizes.dart';
import '../../routes/app_routes.dart';
import '../widgets/custom_button.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "Dinemin",
                    style: AppTextStyles.buttonText.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Image
            Expanded(
              child: Image.asset('assets/onboarding1.png', fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),

            // Title
            Text(
              AppStrings.onboardingTitle1,
              style: AppTextStyles.heading1,
              textAlign: TextAlign.center,
            ),
            Text(
              AppStrings.onboardingTitle11,
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
                Navigator.pushReplacementNamed(context, AppRoutes.onboarding2);
              },
            ),
            const SizedBox(height: 12),

            // Skip to Login
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.login);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: AppColors.primaryGreen,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
