import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_radiuses.dart';
import 'package:profile_bitely/Resources/app_text_styles.dart';

class ProfileProWidget extends StatelessWidget {
  const ProfileProWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: AppRadiuses.radiusAll14,
              color: AppColors.onPrimaryDark),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0.h, vertical: 0.2.w),
            child: Text("PRO",
                style: AppTextStyles.bodySmallDark.copyWith(fontSize: 8.5.sp)),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
