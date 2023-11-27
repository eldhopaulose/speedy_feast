import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:speedy_feast/app/data/common/token.dart';
import 'package:speedy_feast/app/networks/dio/repo/auth_repo.dart';
import 'package:speedy_feast/app/networks/models/user_token_error.dart';

import 'app/routes/app_pages.dart';

void main() {
  // Get.put<Token>(Token(token: );
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
