import 'package:get/get.dart';
import 'package:getx/binding/home_page_binding.dart';
import 'package:getx/binding/profile_page_binding.dart';
import 'package:getx/page/home_page.dart';
import 'package:getx/page/profile_page.dart';
import 'package:getx/routes/routes.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => const HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Routes.PROFILE_PAGE,
      page: () => const ProfilePage(),
      binding: ProfilePageBinding(),
    ),
  ];
}
