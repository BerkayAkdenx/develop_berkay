import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/pages.dart';
import 'package:getx/routes/routes.dart';
import 'package:getx/services/test_service.dart';

void main() {
  Get.put(TestService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: Routes.HOME_PAGE,
      getPages: Pages.pages,
    );
  }
}
