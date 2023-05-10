import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_images.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //this row for appbar
            Padding(
              padding: AppSpacings.sL15T50,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => print("clicked  the back button"),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Text(
                    AppTexts.editProfile,
                    style: AppTextStyles.headlineLargeDark,
                  ),
                  const Spacer(),
                  Padding(
                    padding: AppSpacings.sR5.copyWith(right: 20.w),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.settingRowBackground,
                            shape: RoundedRectangleBorder(
                                borderRadius: AppRadiuses.radiusAll10)),
                        onPressed: () {},
                        child: Text(
                          "SAVE",
                          style: AppTextStyles.bodyMediumDark,
                        )),
                  )
                ],
              ),
            ),
            // this row for profile image
            Column(
              children: [
                SizedBox(height: 40.h),
                Image.asset(AppImages.settingsProfile),
                Padding(
                  padding: AppSpacings.sAll20,
                  child: Text(
                    "İrem Nur Erenel",
                    style: AppTextStyles.headlineLargeDark,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
