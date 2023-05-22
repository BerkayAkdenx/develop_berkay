import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';

// ignore: must_be_immutable
class FeedbackPage extends StatelessWidget {
  FeedbackPage({super.key});
  TextEditingController feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(children: [
        AppbarWidget(title: AppTexts.giveUsFeedback.tr),
        Padding(
          padding: AppSpacings.sSymmetricV40H40,
          child: TextField(
            controller: feedbackController,
            keyboardType: TextInputType.multiline,
            maxLines: 12,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: AppTexts.letUsKnow.tr,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
          ),
        ),
        BaseButtonWidget(
          text: AppTexts.buttonSubmit.tr,
          onPressed: () => print("clicked submit button"),
        )
      ]),
    );
  }
}
