import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_images.dart';
import 'package:profile_bitely/Resources/app_radiuses.dart';
import 'package:profile_bitely/Resources/app_spacings.dart';
import 'package:profile_bitely/Resources/app_text_styles.dart';
import 'package:profile_bitely/Resources/app_texts.dart';
import 'package:profile_bitely/feature/profile/widgets/payment_failed_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_column_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_pro_widget.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          //this row for profile and setting
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppTexts.profile,
                  style: AppTextStyles.headlineLargeDark,
                ),
                GestureDetector(
                    onTap: () => print("clicked the setting"),
                    child: Image.asset(AppImages.setting)),
              ],
            ),
          ),
          //this row Profile image
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              children: [
                Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: AppRadiuses.radiusAll50,
                    color: AppColors.onPrimaryDark,
                  ),
                  child: Image.asset(
                    AppImages.profileDefault,
                    scale: 1.1,
                  ),
                ),
                Padding(
                  padding: AppSpacings.sAll20,
                  child: SizedBox(
                    width: 193.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Burak Volkan Coşkun",
                              style: AppTextStyles.titleLargeDark
                                  .copyWith(wordSpacing: 2, letterSpacing: 1),
                            ),
                            const ProfileProWidget()
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: AppSpacings.sSymmetricV8,
                              child: Text(
                                AppTexts.editProfile,
                                style: AppTextStyles.bodySmallDark.copyWith(
                                    color: AppColors.profileBlackLight),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
              children: [
                const ProfilePageColumnWidget(
                  num: "134",
                  text: AppTexts.bites,
                ),
                SizedBox(width: 45.w),
                const ProfilePageColumnWidget(
                    num: "0", text: AppTexts.challenges),
                SizedBox(width: 45.w),
                const ProfilePageColumnWidget(num: "158", text: AppTexts.likes),
                SizedBox(width: 45.w),
                const ProfilePageColumnWidget(
                    num: "34", text: AppTexts.finished)
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 31.h,
          ),
          //this row for get Premium
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              children: const [PaymentFailedWidget()],
            ),
          ),
          SizedBox(height: 25.h),
          //this row for Keep Reading
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppTexts.keepReading,
                    style: AppTextStyles.headlineLargeDark),
                InkWell(
                  child: Text(
                    AppTexts.seeAll,
                    style: AppTextStyles.bodyMediumDark,
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
    );
  }
}
