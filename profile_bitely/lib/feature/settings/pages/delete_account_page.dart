import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/settings/controller/delete_account_page_controller.dart';
import 'package:profile_bitely/feature/settings/widgets/appbar_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';
import 'package:profile_bitely/feature/settings/widgets/reason_container_widget.dart';

class DeleteAccountPage extends GetView<DeleteAccountPageController> {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWidget(title: AppTexts.appbarDeleteAccount.tr),
            Padding(
              padding: AppSpacings.sAll16
                  .copyWith(bottom: 0, right: 16.w, left: 16.w, top: 16.h),
              child: Column(
                children: [
                  Padding(
                    padding: AppSpacings.sR5.copyWith(right: 100),
                    child: Text(
                      AppTexts.weAreSorry.tr,
                      style: AppTextStyles.displaySmallDark,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: AppSpacings.sR5.copyWith(right: 100),
                    child: Text(
                      AppTexts.pleaseShareTheReason.tr,
                      style: AppTextStyles.titleMediumDark,
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Obx(
                    () => ReasonContainerWidget(
                      onpressed: () => controller.onChangeCost(),
                      enable: controller.ispressedCost.value,
                      text: AppTexts.costRelatedReasons.tr,
                    ),
                  ),
                  Obx(
                    () => ReasonContainerWidget(
                      onpressed: () => controller.onChangeIDont(),
                      enable: controller.ispressedIDont.value,
                      text: AppTexts.iDontUse.tr,
                    ),
                  ),
                  Obx(
                    () => ReasonContainerWidget(
                      onpressed: () => controller.onChangeIFound(),
                      enable: controller.ispressedIFound.value,
                      text: AppTexts.iFoundABetter.tr,
                    ),
                  ),
                  Obx(
                    () => ReasonContainerWidget(
                      onpressed: () => controller.onChangeTechnical(),
                      enable: controller.ispressedTechnical.value,
                      text: AppTexts.technicalIssues.tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 27.h),
                    child: BaseButtonWidget(
                      text: AppTexts.buttonDeleteMyAccount.tr,
                      color: AppColors.redDanger,
                      textcolor: AppColors.white,
                      onPressed: () {
                        print("deleted account");
                      },
                    ),
                  ),
                  Padding(
                    padding: AppSpacings.sAll20.copyWith(bottom: 0),
                    child: InkWell(
                      onTap: () {
                        print("ontap clicked");
                      },
                      child: Text(
                        AppTexts.notNow.tr,
                        style: AppTextStyles.bodyMediumDark
                            .copyWith(color: Colors.white70),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
