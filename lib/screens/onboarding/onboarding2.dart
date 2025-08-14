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
    double bigSize = 300; // main circle size
    double smallSize = 30; // small circles size

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          children: [
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
                      bottom: smallSize / 1,
                      left: smallSize / 1,
                      child: _buildSmallCircle(
                        "assets/onboarding1.png",
                        smallSize,
                      ),
                    ),

                    // Bottom-right small circle
                    Positioned(
                      bottom: smallSize / 1,
                      right: smallSize / 1,
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
              AppStrings.onboardingTitle1,
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
