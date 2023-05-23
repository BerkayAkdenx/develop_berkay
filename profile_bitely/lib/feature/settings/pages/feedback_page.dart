import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';

// ignore: must_be_immutable
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  TextEditingController feedbackController = TextEditingController();
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          AppbarWidget(title: AppTexts.giveUsFeedback.tr),
          Padding(
            padding: AppSpacings.sSymmetricV40H40,
            child: TextField(
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    isEmpty = true;
                  } else if (value.length <= 150) {
                    isEmpty = false;
                  } else {
                    isEmpty = true;
                  }
                });
              },
              controller: feedbackController,
              keyboardType: TextInputType.multiline,
              maxLines: 12,
              style: AppTextStyles.bodyMediumLight,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: AppTexts.letUsKnow.tr,
                border: OutlineInputBorder(
                  borderRadius: AppRadiuses.radiusAll6,
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          BaseButtonWidget(
            text: AppTexts.buttonSubmit.tr,
            onPressed: isEmpty ? null : () => print("clicked submit button"),
          )
        ],
      ),
    );
  }
}
