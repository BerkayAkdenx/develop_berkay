import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';

class ReasonContainerWidget extends StatelessWidget {
  const ReasonContainerWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacings.sB10.copyWith(bottom: 20),
      padding: AppSpacings.sAll20.copyWith(top: 0, bottom: 0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.white,
            width: 2,
          ),
          borderRadius: AppRadiuses.radiusAll12),
      width: double.infinity,
      height: 57.h,
      child: Text(
        text,
        style:
            AppTextStyles.titleSmallDark.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
