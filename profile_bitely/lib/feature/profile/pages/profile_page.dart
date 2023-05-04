import 'package:flutter/material.dart';
import 'package:profile_bitely/Resources/app_colors.dart';
import 'package:profile_bitely/Resources/app_spacings.dart';
import 'package:profile_bitely/Resources/app_texts.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_column_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_divider_widget.dart';
import 'package:profile_bitely/feature/profile/widgets/profile_page_stack_widget.dart';

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
        children: [
          const SizedBox(height: 50),
          //this row for profile and setting
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
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
                  // ignore: avoid_print
                  onPressed: () => print("clicked to setting button"),
                  icon: const Icon(
                    Icons.settings,
                    color: AppColors.lightBackground,
                  ),
                )
              ],
            ),
          ),
          //this row Profile image
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
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
          ),
          //this row for 134 bites
          const SizedBox(height: 14),
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
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
          ),
          const ProfilePageDividerWidget(),
          //this row for get Premium
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              children: const [ProfilePageStackWidget()],
            ),
          ),
          const SizedBox(height: 30),
          //this row for Keep Reading
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppTexts.keepReading,
                  style: TextStyle(
                      color: AppColors.lightBackground,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  child: const Text(
                    AppTexts.seeAll,
                    style: TextStyle(
                        color: AppColors.lightBackground,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  // ignore: avoid_print
                  onTap: () => print("clicked to see all"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //this row for books
          Padding(
            padding: AppSpacings.sSymmetricH30,
            child: SizedBox(
              height: 250,
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
