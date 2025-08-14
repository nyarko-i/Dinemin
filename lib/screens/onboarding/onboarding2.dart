import 'package:dinemin/constants/colors.dart';
import 'package:flutter/material.dart';
//import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import '../../constants/sizes.dart';
import '../../routes/app_routes.dart';
import '../widgets/custom_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    double bigSize = 300; // main circle size
    double smallSize = 30; // small circles size

    return Scaffold(
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
            const SizedBox(height: 60),

            // Main image with small circles
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Main big circle
                    Container(
                      width: bigSize,
                      height: bigSize,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/onboarding2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Top small circle
                    Positioned(
                      top: -smallSize / 2,
                      left: bigSize / 2 - smallSize / 2,
                      child: _buildSmallCircle(
                        "assets/onboarding1.png",
                        smallSize,
                      ),
                    ),

                    // Bottom-left small circle
                    Positioned(
                      bottom: smallSize,
                      left: smallSize / 0.75,
                      child: _buildSmallCircle(
                        "assets/onboarding1.png",
                        smallSize,
                      ),
                    ),

                    // Bottom-right small circle
                    Positioned(
                      bottom: smallSize / 1,
                      right: smallSize / 0.75,
                      child: _buildSmallCircle(
                        "assets/onboarding1.png",
                        smallSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Title
            Text(
              AppStrings.onboardingTitle2,
              style: AppTextStyles.heading1,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // Subtitle
            Text(
              AppStrings.onboardingSubtitle2,
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

  // Reusable small circle widget
  Widget _buildSmallCircle(String imagePath, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
