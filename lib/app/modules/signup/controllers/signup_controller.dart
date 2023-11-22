import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  final isChecked = false.obs;
  final isCheckedValue = false.obs;
  @override
  void onInit() {
    super.onInit();
    checkAndSetColor();
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
    checkAndSetColor(); // Call the method to update the button color
    print(value);
  }

  void checkAndSetColor() {
    if (isChecked.value == true) {
      isCheckedValue.value == true;
    }
    if (isChecked.value == false) {
      isCheckedValue.value == true;
    }
  }
}
