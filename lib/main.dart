import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:speedy_feast/app/networks/models/user_token_error.dart';
import 'app/routes/app_pages.dart';

void main() {
  // Get.put<Token>(Token(token: );
  Get.lazyPut(() => UserTokenError());

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    ),
  );
}
