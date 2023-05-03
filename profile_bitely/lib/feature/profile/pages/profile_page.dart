import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_spacings.dart';
import 'package:profile_bitely/Resources/app_texts.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_column_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_divider_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_stack_widget.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPrimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 71),
        child: Column(
          children: [
            //this row for profile and setting
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppTexts.profile,
                  style: TextStyle(
                      color: AppColors.lightBackground,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    print("click to setting button");
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: AppColors.lightBackground,
                  ),
                )
              ],
            ),
            //this row Profile image
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.blue,
                  ),
                  child: Image.asset(
                    "assets/Images/profileDefault.png",
                    scale: 1.1,
                  ),
                ),
                Padding(
                  padding: AppSpacings.sAll20,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Burak Volkan Çoşkun",
                              style: TextStyle(
                                  color: AppColors.lightBackground,
                                  wordSpacing: 2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: AppSpacings.sSymmetricV8,
                              child: Text(
                                AppTexts.editProfile,
                                style: TextStyle(
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.bold),
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
            //this row for 134 bites
            const SizedBox(height: 14),
            Row(
              children: const [
                ProfilePageColumnWidget(
                  num: "134",
                  text: AppTexts.bites,
                ),
                SizedBox(width: 30),
                ProfilePageColumnWidget(num: "0", text: AppTexts.challenges),
                SizedBox(width: 30),
                ProfilePageColumnWidget(num: "158", text: AppTexts.likes),
                SizedBox(width: 30),
                ProfilePageColumnWidget(num: "34", text: AppTexts.finished)
              ],
            ),
            const ProfilePageDividerWidget(),
            //this row for get Premium
            Row(
              children: const [ProfilePageStackWidget()],
            ),
            //this row for Keep Reading
            Row(
              children: const [],
            ),
            //this row for books
            Row(
              children: const [],
            ),
          ],
        ),
      ),
    );
  }
}
