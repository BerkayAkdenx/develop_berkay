import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Resources/app_colors.dart';
import 'package:profile_bitely/core/Resources/app_images.dart';
import 'package:profile_bitely/core/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Resources/app_text_styles.dart';

class ProfileBooksListWidget extends StatelessWidget {
  final String username;
  const ProfileBooksListWidget({Key? key, required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppSpacings.sAll8,
          child: Container(
            width: 110.0.w,
            height: 140.0.h,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.radiusAll10,
              image: const DecorationImage(
                image: AssetImage(AppImages.bookRecommendationSample),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          username,
          style: AppTextStyles.titleSmallDark,
        ),
        Padding(
          padding: AppSpacings.sAll8,
          child: Text(
            "Author Name",
            style: AppTextStyles.bodySmallDark.copyWith(fontSize: 9.sp),
          ),
        ),
        Padding(
          padding: AppSpacings.sAll8,
          child: SizedBox(
            height: 3.h,
            width: 110.0.w,
            child: const LinearProgressIndicator(
              color: AppColors.blue,
              backgroundColor: AppColors.blackLight,
              value: 0.5, // İlerleme yüzdesi burada belirtilir.
            ),
          ),
        ),
      ],
    );
  }
}
