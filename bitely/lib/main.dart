import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:profile_bitely/core/Global/Resources/app_translates.dart';
import 'package:profile_bitely/core/Routes/pages.dart';
import 'package:profile_bitely/core/Routes/routes.dart';

import 'package:profile_bitely/feature/settings/pages/settings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        locale: const Locale("en"),
        getPages: Pages.pages,
        initialRoute: Routes.PROFILE_PAGE,
        translations: AppTranslations(),
        home: const SettingPage(),
      ),
    );
  }
}
