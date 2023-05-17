import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.secondaryDark,
    this.textcolor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding:
              AppSpacings.sSymmetricH50V20.copyWith(right: 60.w, left: 60.w),
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: AppRadiuses.radiusAll50)),
      child: Text(
        text,
        style: AppTextStyles.bodyMediumLight
            .copyWith(fontWeight: FontWeight.bold)
            .copyWith(color: textcolor),
      ),
    );
  }
}
