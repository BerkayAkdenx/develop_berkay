import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Resources/app_colors.dart';
import 'package:profile_bitely/core/Resources/app_images.dart';
import 'package:profile_bitely/core/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Resources/app_text_styles.dart';
import 'package:profile_bitely/Resources/app_texts.dart';

class PaymentFailedWidget extends StatelessWidget {
  const PaymentFailedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.w,
      height: 95.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.radiusAll10,
        color: AppColors.onTertiaryLight,
      ),
      child: Row(
        children: [
          Padding(
            padding: AppSpacings.sSymmetricH20,
            child: Image.asset(AppImages.failed),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(AppTexts.paymentFailed,
                      style: AppTextStyles.titleLargeDark),
                ],
              ),
              Padding(
                padding: AppSpacings.sT10,
                child: Row(
                  children: [
                    Text(
                      AppTexts.weAreUnable,
                      style:
                          AppTextStyles.bodySmallDark.copyWith(fontSize: 10.sp),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
