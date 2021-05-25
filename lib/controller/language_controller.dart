import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_x_example/utils/local_storage.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var appLang = "ar";

  @override
  void onInit() async {
    super.onInit();
    LocalStorage localStorage = LocalStorage();

    appLang = await localStorage.languageSelected ?? 'ar';
    update();
    Get.updateLocale(Locale(appLang));
  }

  void changeLanguage(String local) async {
    LocalStorage localStorage = LocalStorage();

    if (appLang == local) {
      return;
    }

    localStorage.saveLanguageToStorage(local);

    update();
  }
}
