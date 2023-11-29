import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_feast/app/networks/dio/repo/auth_repo.dart';
import 'package:speedy_feast/app/networks/models/user_req_res.dart';
import 'package:speedy_feast/app/routes/app_pages.dart';

class SignupController extends GetxController {
  final count = 0.obs;
  final isChecked = false.obs;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void isChecking(bool? value) {
    isChecked.value = value ?? false;
  }

  onSignupCliked() async {
    final AuthRepo repo = AuthRepo();
    final response = await repo.AuthReResSignup(
      UserReqRes(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response != null && response.error == null) {
      Get.toNamed(Routes.LOGIN);
    } else {
      Get.showSnackbar(GetSnackBar(
        title: "error",
        message: response?.error.toString(),
        duration: const Duration(seconds: 3),
      ));
    }
  }
}
