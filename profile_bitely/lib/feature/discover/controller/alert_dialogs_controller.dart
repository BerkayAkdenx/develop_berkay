import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_colors.dart';
import 'package:profile_bitely/core/Global/Resources/app_radiuses.dart';
import 'package:profile_bitely/core/Global/Resources/app_spacings.dart';
import 'package:profile_bitely/core/Global/Resources/app_text_styles.dart';
import 'package:profile_bitely/feature/settings/controller/base_controller.dart';
import 'package:profile_bitely/feature/settings/widgets/base_button_widget.dart';

class AlertDialogsController extends BaseController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("hi alert dialog controller initialized");
  }

  void alertDialogMethod(
      {required BuildContext context, required String text}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: AppRadiuses.radiusAll14),
          backgroundColor: AppColors.backgroundAlertDialog,
          alignment: Alignment.center,
          title: Container(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () => Get.back(),
              child: Image.asset(
                "assets/Images/ic_cancel.png",
                scale: 1.2,
              ),
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              text,
              style: AppTextStyles.bodyLargeDark,
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            Padding(
              padding: AppSpacings.sB10.copyWith(bottom: 30),
              child: Center(
                child: BaseButtonWidget(
                  onPressed: () => Get.back(),
                  color: AppColors.onPrimaryDark,
                  text: 'Okay',
                  textcolor: Colors.white,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
