import 'package:flutter/material.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.color = AppColors.secondaryDark,
    this.textcolor,
  });
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            disabledBackgroundColor: AppColors.secondaryDark.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: AppRadiuses.radiusAll50)),
        child: Text(
          text,
          style: AppTextStyles.bodyMediumLight
              .copyWith(fontWeight: FontWeight.bold)
              .copyWith(color: textcolor),
        ),
      ),
    );
  }
}
