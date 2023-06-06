import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_images.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.text,
  });
  final text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Image.asset(
          AppImages.settingsProfile,
          scale: 0.8,
        ),
        Padding(
          padding: AppSpacings.sAll20,
          child: Text(
            text,
            style: AppTextStyles.headlineLargeDark,
          ),
        )
      ],
    );
  }
}
