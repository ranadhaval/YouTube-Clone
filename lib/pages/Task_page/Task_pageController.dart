import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managerapp/pages/Task_page/Model/Response/SampleResponse.dart';
import 'package:managerapp/pages/Task_page/Provider/Task_pageProvider.dart';

import 'package:managerapp/webservices/response_model.dart';

class Mycontroller extends GetxController {
  @override
  void onInit() {
    apicall();
    print(getVideoID());
    super.onInit();
  }

  List<SampleResponse> sampleList = [];
  String getVideoID() {
    if (sampleList.isNotEmpty) {
      String url = sampleList[0].videoId.toString();
      return url;
    }
    update();

    return "";
  }

  void apicall() {
    sampleProvider().Sampleprovider(onSuccess: (ResponseModel response) {
      if (response.statusCode == 200) {
        print("your result is :${response.result}");

        try {
          var decodedResponse = response.result;
          decodedResponse.forEach((e) {
            sampleList.add(SampleResponse.fromJson(e));
          });
          update();
        } catch (e) {
          print(e);
        }
      } else {
        snackbar('error found', Colors.red);
      }
    });
  }

  SnackbarController snackbar(String message, Color color) {
    return Get.snackbar(
      padding: EdgeInsets.all(12),
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: color,
      colorText: Colors.white,
      margin: const EdgeInsets.all(10),
    );
  }
}
