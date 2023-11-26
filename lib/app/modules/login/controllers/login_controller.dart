import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:speedy_feast/app/networks/dio/repo/auth_repo.dart';
import 'package:speedy_feast/app/networks/models/user_req_res.dart';
import 'package:speedy_feast/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final count = 0.obs;
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

  onLoginCliked() async {
    final AuthRepo repo = AuthRepo();
    final response = await repo.AuthReResLogin(
      UserReqRes(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response != null && response.error == null) {
      Get.toNamed(Routes.HOME);
    } else {
      Get.showSnackbar(GetSnackBar(
        title: "error",
        message: response?.error.toString(),
        duration: Duration(seconds: 3),
      ));
    }
  }
}
