import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';

class BaseSaveButtonWidget extends StatelessWidget {
  const BaseSaveButtonWidget({
    super.key,
    required this.onpressed,
  });
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacings.sR5.copyWith(right: 20.w),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.settingRowBackground,
              shape: RoundedRectangleBorder(
                  borderRadius: AppRadiuses.radiusAll10)),
          onPressed: onpressed,
          child: Text(
            AppTexts.save,
            style: AppTextStyles.bodyMediumDark,
          )),
    );
  }
}
