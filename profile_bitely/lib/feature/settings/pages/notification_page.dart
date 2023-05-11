import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/pages/push_notification_page.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/clickable_container_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          //this row for appbar
          AppbarWidget(
            title: AppTexts.notifications,
            saveActive: true,
            onpressedForSave: () {},
          ),
          SizedBox(height: 50.h),
          // this row for push notification
          ClickableContainerWidget(
            text: AppTexts.pushNotification,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PushNotificationPage(),
                )),
          )
        ],
      ),
    );
  }
}
