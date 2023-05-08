import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_text_styles.dart';

class ProfilePageColumnWidget extends StatelessWidget {
  const ProfilePageColumnWidget({
    super.key,
    required this.num,
    required this.text,
  });

  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: AppTextStyles.headlineLargeDark,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0.h),
          child: Text(
            text,
            style: AppTextStyles.bodySmallDark
                .copyWith(color: AppColors.profileBlackLight),
          ),
        )
      ],
    );
  }
}
