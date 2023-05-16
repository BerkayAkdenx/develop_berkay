import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home Page"),
          const SizedBox(
            height: 50,
          ),
          CupertinoButton.filled(
            onPressed: () => Get.toNamed(Routes.PROFILE_PAGE),
            child: const Text("Go to profile page"),
          )
        ],
      )),
    );
  }
}
