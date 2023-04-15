import 'package:flutter/material.dart';
import 'package:my_recipe/common/constants/app_colors.dart';
import 'package:my_recipe/common/constants/app_text_styles.dart';

import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 18.0,
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/onboarding.png',
              ),
            ),
            Text('Spend Smarter',
                style: AppTextStyles.mediumText.copyWith(
                  color: AppColors.secondaryColor,
                )),
            Text('Save More',
                style: AppTextStyles.mediumText.copyWith(
                  color: AppColors.secondaryColor,
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
              child: PrimaryButton(text: 'Get Started', onPressed: () {}),
            ),
            Text('Already have an account? Login',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                )),
            const SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
