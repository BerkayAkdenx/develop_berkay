import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class ProfileWithProWidget extends StatelessWidget {
  const ProfileWithProWidget({
    super.key,
    required this.text,
    this.proTagActive = false,
  });
  final String text;
  final bool proTagActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: AppTextStyles.titleMediumDark),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: AppRadiuses.radiusAll14,
                  color: AppColors.onPrimaryDark),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 4.0.h, vertical: 0.2.w),
                child: proTagActive
                    ? Text("PRO",
                        style: AppTextStyles.bodySmallDark
                            .copyWith(fontSize: 8.5.sp))
                    : null,
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        )
      ],
    );
  }
}
