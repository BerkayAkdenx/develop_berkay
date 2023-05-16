import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Profile Page"),
          const SizedBox(
            height: 50,
          ),
          CupertinoButton.filled(
              onPressed: () => Get.back(), child: const Text("Go to back"))
        ],
      )),
    );
  }
}
