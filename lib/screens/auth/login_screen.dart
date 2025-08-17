import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import '../../routes/app_routes.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _socialButton({
    required String label,
    required String assetPath,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Image.asset(assetPath, height: 20),
        label: Text(label, style: AppTextStyles.bodyText),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: const BorderSide(color: AppColors.primaryGreen),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        label,
        style: AppTextStyles.bodyText.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.onboarding1,
                ),
              ),
              const SizedBox(height: 16),

              // Header
              Text(AppStrings.loginTitle, style: AppTextStyles.heading1),
              const SizedBox(height: 6),
              Text(AppStrings.loginSubtitle, style: AppTextStyles.bodyText),

              const SizedBox(height: 32),

              // Email label + field
              _buildLabel(AppStrings.emailHint),
              CustomTextField(
                hint: AppStrings.emailHint,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                fillColor: Colors.grey[200], // light grey background
              ),
              const SizedBox(height: 16),

              // Password label + field
              _buildLabel(AppStrings.passwordHint),
              CustomTextField(
                hint: AppStrings.passwordHint,
                obscureText: _obscure,
                controller: _passwordController,
                fillColor: Colors.grey[200], // light grey background
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey, // faded icon
                  ),
                  onPressed: () => setState(() => _obscure = !_obscure),
                ),
              ),

              // Forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.forgotPassword),
                  child: Text(AppStrings.forgotPassword),
                ),
              ),

              const SizedBox(height: 8),

              // Login button
              CustomButton(text: AppStrings.loginCta, onPressed: () {}),

              const SizedBox(height: 14),

              // Don't have account? Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextStyles.bodyText.copyWith(
                      color: Colors.grey[700],
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.signup),
                    child: Text(
                      "Sign Up",
                      style: AppTextStyles.bodyText.copyWith(
                        color: AppColors.primaryGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Divider with text
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey[400], thickness: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or with",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey[400], thickness: 1),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Social buttons
              _socialButton(
                label: AppStrings.signInWithGoogle,
                assetPath: 'assets/google.png',
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              _socialButton(
                label: AppStrings.signInWithApple,
                assetPath: 'assets/apple.png',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
