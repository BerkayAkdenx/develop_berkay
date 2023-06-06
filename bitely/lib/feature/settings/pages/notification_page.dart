import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/controller/notification_page_controller.dart';
import 'package:profile_bitely/core/Routes/routes.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickable_container_widget.dart';

class NotificationPage extends GetView<NotificationPageController> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          //this row for appbar
          AppbarWidget(
            title: AppTexts.notifications.tr,
            saveActive: false,
          ),
          SizedBox(height: 50.h),
          // this row for push notification
          ClickableContainerWidget(
              text: AppTexts.pushNotification.tr,
              onPressed: () => Get.toNamed(Routes.PUSH_NOTIFICATION_PAGE)),
        ],
      ),
    );
  }
}
