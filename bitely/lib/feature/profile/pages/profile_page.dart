import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_images.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/core/Routes/routes.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_get_premium_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_column_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_with_pro_widget.dart';

import '../widgets/profile_books_widget.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List books = [
      'Book 1',
      'Born Liars',
      'Book 3',
      'book 4',
      'book 6',
      'book 7',
      'book 8',
    ];
    return Scaffold(
      backgroundColor: AppColors.darkPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            //this row for profile and setting
            Padding(
              padding: AppSpacings.sSymmetricH30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppTexts.profile.tr,
                    style: AppTextStyles.headlineLargeDark,
                  ),
                  GestureDetector(
                      onTap: () => Get.toNamed(Routes.SETTINGS_PAGE),
                      child: Image.asset(AppImages.setting)),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            //this row Profile image
            Padding(
              padding: AppSpacings.sSymmetricH30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 75.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: AppRadiuses.radiusAll50,
                      color: AppColors.onPrimaryDark,
                    ),
                    child: Image.asset(
                      AppImages.profileDefault,
                      scale: 0.9,
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: Column(
                      children: [
                        const ProfileWithProWidget(
                          text: "Burak Volkan Coşkun",
                          proTagActive: false,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: AppSpacings.sSymmetricV8,
                              child: Text(
                                AppTexts.editProfile..tr,
                                style: AppTextStyles.bodySmallDark.copyWith(
                                    color: AppColors.profileBlackLight),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //this row for 134 bites
            SizedBox(height: 11.h),
            Padding(
              padding: AppSpacings.sSymmetricH30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfilePageColumnWidget(
                    num: "134",
                    text: AppTexts.bites.tr,
                  ),
                  ProfilePageColumnWidget(
                      num: "0", text: AppTexts.challenges.tr),
                  ProfilePageColumnWidget(num: "158", text: AppTexts.likes.tr),
                  ProfilePageColumnWidget(num: "34", text: AppTexts.finished.tr)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 31.h,
            ),
            //this row for get Premium
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ProfileGetPremiumWidget()],
            ),
            SizedBox(height: 25.h),
            //this row for Keep Reading
            Padding(
              padding: AppSpacings.sSymmetricH30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppTexts.keepReading.tr,
                      style: AppTextStyles.headlineLargeDark),
                  InkWell(
                    child: Text(
                      AppTexts.seeAll.tr,
                      style: AppTextStyles.bodySmallDark,
                    ),
                    // ignore: avoid_print
                    onTap: () => print("clicked to see all"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //this row for books
            Padding(
              padding: AppSpacings.sL30,
              child: SizedBox(
                height: 250.h,
                child: ListView.builder(
                    itemCount: books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProfileBooksListWidget(
                        username: books[index],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
