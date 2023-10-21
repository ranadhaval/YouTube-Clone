import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:managerapp/routes/app_routes.dart';
// import 'package:managerapp/util/constant.dart';

class SplashController extends GetxController {
  bool isLoading = false;
  bool isInternetNotAvailable = false;
  GetStorage getStorage = GetStorage();

  getUserData() async {
    moveToLogin();
  }

  void moveToLogin() async {
    Get.offAllNamed(AppRoutes.TASK_PAGE);
  }
}
