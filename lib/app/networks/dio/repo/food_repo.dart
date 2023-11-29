import 'package:dio/dio.dart';
import 'package:speedy_feast/app/networks/dio/dio_client.dart';
import 'package:speedy_feast/app/networks/dio/endpoints.dart';
import 'package:speedy_feast/app/networks/models/get_all_food.dart';

class FoodRepo {
  final DioClient dioClient = DioClient(Dio());
  Future<GetAllFood?> getAllFoodRes(int page) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.home,
        data: {'page': page},
      );
      if (response.statusCode == 200) {
        final getAllFoodRes = GetAllFood.fromJson(response.data);
        if (getAllFoodRes.data != null) {
          return getAllFoodRes;
        } else {
          return GetAllFood(error: "No data");
        }
      } else {
        if (response.statusCode == 401) {
          final getAllFoodRes = GetAllFood.fromJson(response.data);
          return getAllFoodRes;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final getAllFoodRes = GetAllFood.fromJson(e.response!.data);
        return getAllFoodRes;
      }

      final getAllFoodRes = GetAllFood(error: "Unexpected Error");
      return getAllFoodRes;
    }
    final getAllFoodRes = GetAllFood(error: "Unexpected Error fun");
    return getAllFoodRes;
  }
}
