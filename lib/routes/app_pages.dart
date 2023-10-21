

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:managerapp/pages/Task_page/Task_page.dart';
import 'package:managerapp/routes/app_routes.dart';

import '../pages/splash/splash.dart';

class AppPages {
  static var list = [
GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.TASK_PAGE,
      page: () => My_Task(),
    ),
    
  ];
}
