import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/test_page_controller.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});
  testPageController controller = testPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.arttir();
        },
      ),
      body: Center(
        child: Obx(() => Text(
              controller.count.toString(),
              style: const TextStyle(fontSize: 56),
            )),
      ),
    );
  }
}
