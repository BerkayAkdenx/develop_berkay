import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/pages/edit_page.dart';
import 'package:profile_bitely/feature/settings/pages/feedback_page.dart';
import 'package:profile_bitely/feature/settings/pages/notification_page.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickable_container_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickless_container_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/image_widget.dart';

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
            padding: AppSpacings.sL15T60,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => print("clicked  the back button"),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Text(
                  AppTexts.appbarSettings.tr,
                  style: AppTextStyles.headlineLargeDark,
                )
              ],
            ),
          ),
          // this row for profile image
          const ImageWidget(
            text: "İrem Nur Erenel",
          ),
          //this row for account
          ClicklessContainerWidget(text: AppTexts.account.tr),
          // this row for Edit Profile
          ClickableContainerWidget(
            text: AppTexts.editProfile.tr,
            // go to edit profile page
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                )),
          ),
          // this row for Billing Details
          ClickableContainerWidget(
            text: AppTexts.billingDetails.tr,
            onPressed: () => print("go to edit Billing Detail page"),
          ),
          // this row for Preferences
          ClicklessContainerWidget(
            text: AppTexts.preferences.tr,
          ),
          // this row for Notifications
          ClickableContainerWidget(
            text: AppTexts.notifications.tr,
            // go to  notifications page
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                )),
          ),
          // this row for Language
          ClickableContainerWidget(
            text: AppTexts.appLanguage.tr,
            onPressed: () => print("go to edit Language page"),
          ),

          // this row for about
          SizedBox(height: 20.h),
          ClicklessContainerWidget(
            text: AppTexts.about.tr,
          ),
          //this row for About Bitely
          ClickableContainerWidget(
            text: AppTexts.aboutBitely.tr,
            isExternal: true,
            onPressed: () => print("go to edit About Bitely page"),
          ),
          // this row for Give Us Feedback
          ClickableContainerWidget(
              text: AppTexts.giveUsFeedback.tr,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeedbackPage(),
                  ))),
          // this row for Request Content
          ClickableContainerWidget(
              text: AppTexts.requestContent.tr,
              onPressed: () => print("go to edit Request Content page")),
          // this row for Contact Us
          ClickableContainerWidget(
              text: AppTexts.contactUs.tr,
              onPressed: () => print("go to edit Contact Us page")),
          // this row for Privacy policy
          ClickableContainerWidget(
              text: AppTexts.privacyPolicy.tr,
              isExternal: true,
              onPressed: () => print("go to edit Privacy policy page")),
          // this row for Terms and  conditions
          ClickableContainerWidget(
              text: AppTexts.termsAndConditions.tr,
              isExternal: true,
              onPressed: () => print("go to edit Terms and  conditions page")),
          SizedBox(
            height: 75.h,
          ),
          // this row for sign out button
          BaseButtonWidget(
            onPressed: () => print("clicked sing out"),
            text: AppTexts.buttonsingOut.tr,
          ),
          SizedBox(
            height: 50.h,
          ),
        ]),
      ),
    );
  }
}
