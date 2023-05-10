import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/Resources/app_texts.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_images.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickable_container_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickless_container_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(children: [
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
                  AppTexts.appbarSettings,
                  style: AppTextStyles.headlineLargeDark,
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
          //this row for account
          const ClicklessContainerWidget(text: AppTexts.account),
          // this row for Edit Profile
          ClickableContainerWidget(
            text: AppTexts.editProfile,
            onPressed: () => print("go to edit profile page"),
          ),
          // this row for Billing Details
          ClickableContainerWidget(
            text: AppTexts.billingDetails,
            onPressed: () => print("go to edit Billing Detail page"),
          ),
          // this row for Preferences
          const ClicklessContainerWidget(
            text: AppTexts.preferences,
          ),
          // this row for Notifications
          ClickableContainerWidget(
            text: AppTexts.notifications,
            onPressed: () => print("go to edit notifications page"),
          ),
          // this row for Language
          ClickableContainerWidget(
            text: AppTexts.appLanguage,
            onPressed: () => print("go to edit Language page"),
          ),

          // this row for about
          SizedBox(height: 20.h),
          const ClicklessContainerWidget(
            text: AppTexts.about,
          ),
          //this row for About Bitely
          ClickableContainerWidget(
            text: AppTexts.aboutBitely,
            isExternal: true,
            onPressed: () => print("go to edit About Bitely page"),
          ),
          // this row for Give Us Feedback
          ClickableContainerWidget(
              text: AppTexts.giveUsFeedback,
              onPressed: () => print("go to edit giveUsFeedback page")),
          // this row for Request Content
          ClickableContainerWidget(
              text: AppTexts.requestContent,
              onPressed: () => print("go to edit Request Content page")),
          // this row for Contact Us
          ClickableContainerWidget(
              text: AppTexts.contactUs,
              onPressed: () => print("go to edit Contact Us page")),
          // this row for Privacy policy
          ClickableContainerWidget(
              text: AppTexts.privacyPolicy,
              isExternal: true,
              onPressed: () => print("go to edit Privacy policy page")),
          // this row for Terms and  conditions
          ClickableContainerWidget(
              text: AppTexts.termsAndConditions,
              isExternal: true,
              onPressed: () => print("go to edit Terms and  conditions page")),
          SizedBox(
            height: 75.h,
          ),
          // this row for sign out button
          BaseButtonWidget(
              onPressed: () => print("clicked sing out"),
              text: AppTexts.buttonsingOut),
          SizedBox(
            height: 50.h,
          ),
        ]),
      ),
    );
  }
}
