import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  final isChecked = false.obs;

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
}
