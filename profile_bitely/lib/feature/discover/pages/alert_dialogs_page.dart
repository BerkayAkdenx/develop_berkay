import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_texts.dart';
import 'package:profile_bitely/feature/discover/controller/alert_dialogs_controller.dart';

class AlertDialogsPage extends GetView<AlertDialogsController> {
  const AlertDialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => controller.alertDialogMethod(
                  context: context, text: AppTexts.alertAddedTo.tr),
              child: const Text("Alert Dialog Added")),
          ElevatedButton(
              onPressed: () => controller.alertDialogMethod(
                  context: context, text: AppTexts.alertMaximum.tr),
              child: const Text("Alert Dialog maximum")),
        ],
      ),
    ));
  }
}
