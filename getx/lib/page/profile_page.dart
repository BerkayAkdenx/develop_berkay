import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/profile_page_controller.dart';

class ProfilePage extends GetView<ProfilePageController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => controller.getData()),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Profile Page"),
          const SizedBox(
            height: 50,
          ),
          CupertinoButton.filled(
            onPressed: () => Get.back(),
            child: const Text("Go to back"),
          ),
        ],
      )),
    );
  }
}
