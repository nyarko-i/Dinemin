import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import '../../constants/sizes.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            //image
            Image.asset('assets/logo.png', fit: BoxFit.contain),
            //Title
            Text(
              AppStrings.onboardingTitle1,
              style: AppTextStyles.heading1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            //Subtitle
            Text(
              AppStrings.onboardingSubtitle1,
              style: AppTextStyles.bodyText,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            //Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("continue")),
            ),
            const SizedBox(height: 12),
            TextButton(onPressed: () {}, child: const Text('Sign In')),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
