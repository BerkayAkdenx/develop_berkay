import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_images.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/Resources/app_texts.dart';

class ProfileGetPremiumWidget extends StatelessWidget {
  const ProfileGetPremiumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 305.w,
          height: 95.h,
          decoration: BoxDecoration(
              borderRadius: AppRadiuses.radiusAll10,
              color: const Color(0xFF8cfccf)),
        ),
        Image.asset(AppImages.profileGetPremium),
        SizedBox(
          width: 305.w,
          height: 95.h,
          child: Padding(
            padding: AppSpacings.sAll20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      AppTexts.getPremium,
                      style: AppTextStyles.headlineLargeLight,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      AppTexts.subscribeNowSevenDays,
                      style: AppTextStyles.bodyMediumLight,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
