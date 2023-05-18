import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(children: [
        AppbarWidget(title: AppTexts.giveUsFeedback.tr),
        BaseButtonWidget(
          text: AppTexts.buttonSubmit.tr,
          onPressed: () => print("clicked submit button"),
        )
      ]),
    );
  }
}
