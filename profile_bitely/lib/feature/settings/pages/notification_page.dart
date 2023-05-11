import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
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
          Padding(
            padding: AppSpacings.sL15T60,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                Text(
                  AppTexts.notifications,
                  style: AppTextStyles.headlineLargeDark,
                )
              ],
            ),
          ),
          SizedBox(height: 50.h),
          // this row for push notification
          ClickableContainerWidget(
            text: AppTexts.pushNotification,
            onPressed: () => print(""),
          )
        ],
      ),
    );
  }
}
