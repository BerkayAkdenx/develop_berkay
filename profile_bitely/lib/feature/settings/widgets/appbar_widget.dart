import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
    required this.title,
    this.saveActive = false,
    required this.onpressedForSave,
  });
  final String title;
  final bool saveActive;
  final VoidCallback onpressedForSave;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacings.sL15T60,
      child: Row(
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          Text(
            title,
            style: AppTextStyles.headlineLargeDark,
          ),
          const Spacer(),
          SizedBox(
              child: saveActive
                  ? Padding(
                      padding: AppSpacings.sR5.copyWith(right: 20.w),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.settingRowBackground,
                              shape: RoundedRectangleBorder(
                                  borderRadius: AppRadiuses.radiusAll10)),
                          onPressed: onpressedForSave,
                          child: Text(
                            AppTexts.save,
                            style: AppTextStyles.bodyMediumDark,
                          )),
                    )
                  : null)
        ],
      ),
    );
  }
}
