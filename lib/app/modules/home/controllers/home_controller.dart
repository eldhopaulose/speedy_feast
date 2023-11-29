import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:speedy_feast/app/networks/dio/repo/food_repo.dart';
import 'package:speedy_feast/app/networks/models/get_all_food.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

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
  Future<GetAllFood?> fetchAllData() async {
    EasyLoading.show(status: 'loading...');
    final FoodRepo foodRepo = FoodRepo();
    final response = await foodRepo.getAllFoodRes(1);
    EasyLoading.dismiss();
    return response;
  }
}
