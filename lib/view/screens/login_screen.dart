import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_example/controller/language_controller.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.put(LanguageController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "login".tr,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "SignUp".tr,
              style: TextStyle(fontSize: 32),
            ),
            GetBuilder<LanguageController>(
              init: LanguageController(),
              builder: (controller) {
                return DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("en"),
                      value: 'en',
                    ),
                    DropdownMenuItem(
                      child: Text("ar"),
                      value: 'ar',
                    ),
                  ],
                  value: controller.appLang,
                  onChanged: (value) {
                    controller.changeLanguage(value);
                    Get.updateLocale(Locale(value));
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}