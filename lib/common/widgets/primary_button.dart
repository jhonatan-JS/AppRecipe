import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: const BorderRadius.all(Radius.circular(38.0)),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(38.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: onPressed != null
                  ? AppColors.gradientColors
                  : AppColors.gradientOpacity,
            ),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(38.0)),
            onTap: onPressed,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),
              ),
              alignment: Alignment.center,
              height: 54.0,
              width: 350.0,
              child: Text(text,
                  style: AppTextStyles.mediumTextButton.copyWith(
                    color: AppColors.white,
                  )),
            ),
          ),
        ));
  }
}
