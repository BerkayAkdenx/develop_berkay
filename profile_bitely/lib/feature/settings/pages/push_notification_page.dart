import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/title_with_text_widget.dart';

class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({super.key});

  @override
  State<PushNotificationPage> createState() => _PushNotificationPageState();
}

class _PushNotificationPageState extends State<PushNotificationPage> {
  bool morningIsSwicthed = false;
  bool stayingIsSwicthed = false;
  bool upIsSwicthed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          AppbarWidget(
            title: AppTexts.pushNotification,
            saveActive: true,
            onpressedForSave: () {
              print("clicked save button");
            },
          ),
          SizedBox(height: 50.h),
          SizedBox(
            height: 65.h,
            child: Padding(
              padding: AppSpacings.sL15,
              child: Row(
                children: [
                  const TitleWithText(
                    text: AppTexts.getReminders,
                    title: AppTexts.morningLearning,
                  ),
                  Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: morningIsSwicthed,
                    onChanged: (value) {
                      setState(() {
                        morningIsSwicthed = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 65.h,
            child: Padding(
              padding: AppSpacings.sL15,
              child: Row(
                children: [
                  const TitleWithText(
                    title: AppTexts.stayingOnTrack,
                    text: AppTexts.rememberToHit,
                  ),
                  Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: stayingIsSwicthed,
                    onChanged: (value) {
                      setState(() {
                        stayingIsSwicthed = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 65.h,
            child: Padding(
              padding: AppSpacings.sL15,
              child: Row(
                children: [
                  const TitleWithText(
                    title: AppTexts.upToDate,
                    text: AppTexts.weWillRecommend,
                  ),
                  Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: upIsSwicthed,
                    onChanged: (value) {
                      setState(() {
                        upIsSwicthed = value;
                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // i didnt get extract widget
}
