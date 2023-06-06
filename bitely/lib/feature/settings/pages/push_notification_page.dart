import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/controller/push_notification_controller.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/title_with_text_widget.dart';

class PushNotificationPage extends GetView<PushNotificationController> {
  const PushNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          AppbarWidget(
            title: AppTexts.pushNotification.tr,
            saveActive: true,
            onpressedForSave: () {
              print("clicked save button");
            },
          ),
          SizedBox(height: 50.h),
          Container(
            height: 65.h,
            padding: AppSpacings.sL15,
            child: Row(
              children: [
                TitleWithText(
                  text: AppTexts.getReminders.tr,
                  title: AppTexts.morningLearning.tr,
                ),
                Obx(
                  () => Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: controller.morningIsSwicthed.value,
                    onChanged: (value) {
                      controller.onchangeMorning(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 65.h,
            padding: AppSpacings.sL15,
            child: Row(
              children: [
                TitleWithText(
                  title: AppTexts.stayingOnTrack.tr,
                  text: AppTexts.rememberToHit.tr,
                ),
                Obx(
                  () => Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: controller.stayingIsSwicthed.value,
                    onChanged: (value) {
                      controller.onchangeStaying(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            height: 65.h,
            padding: AppSpacings.sL15,
            child: Row(
              children: [
                TitleWithText(
                  title: AppTexts.upToDate.tr,
                  text: AppTexts.weWillRecommend.tr,
                ),
                Obx(
                  () => Switch(
                    inactiveThumbColor: AppColors.profileBlackLight,
                    inactiveTrackColor: AppColors.blackLight,
                    activeTrackColor: AppColors.blackLight,
                    activeColor: AppColors.greenLight,
                    value: controller.upIsSwicthed.value,
                    onChanged: (value) {
                      controller.onchangeUp(value);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // i didnt get extract widget for switch
}
