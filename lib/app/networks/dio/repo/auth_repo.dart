import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:speedy_feast/app/data/common/token.dart';
import 'package:speedy_feast/app/networks/dio/dio_client.dart';
import 'package:speedy_feast/app/networks/dio/endpoints.dart';
import 'package:speedy_feast/app/networks/models/user_req_res.dart';
import 'package:speedy_feast/app/networks/models/user_token_error.dart';

class AuthRepo {
  final DioClient dioClient = DioClient(Dio());

  Future<UserTokenError?> AuthReResSignup(UserReqRes userSignupRes) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.signup,
        data: userSignupRes.toJson(),
      );
      print(response);
      if (response.statusCode == 200) {
        final signupResponse = UserTokenError.fromJson(response.data);
        if (signupResponse.token != null) {
          return signupResponse;
        } else {
          final signupResponse =
              UserTokenError(error: "User Not Register! Something wrong");
          return signupResponse;
        }
      } else {
        final signupResponse = UserTokenError.fromJson(response.data);
        if (response.statusCode == 500) {
          return signupResponse;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final signupResponse = UserTokenError.fromJson(e.response!.data);
        return signupResponse;
      }
      final signupResponse = UserTokenError(error: "Unexpected Error");
      return signupResponse;
    }
    final signupResponse =
        UserTokenError(error: "Unexpected Error Not goes to Signup fun");
    return signupResponse;
  }

  Future<UserTokenError?> AuthReResLogin(UserReqRes userLoginRes) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.login,
        data: userLoginRes.toJson(),
      );
      print(response);
      if (response.statusCode == 200) {
        final loginResponse = UserTokenError.fromJson(response.data);
        if (loginResponse.token != null) {
          Get.put<Token>(Token(token: loginResponse.token), permanent: true);
          return loginResponse;
        } else {
          final loginResponse =
              UserTokenError(error: "User Not Register! Something wrong");
          return loginResponse;
        }
      } else {
        final loginResponse = UserTokenError.fromJson(response.data);
        if (response.statusCode == 500) {
          return loginResponse;
        }
      }
    } on DioException catch (e) {
      if (e.response!.data != null) {
        final loginResponse = UserTokenError.fromJson(e.response!.data);
        return loginResponse;
      }
      final loginResponse = UserTokenError(error: "Unexpected Error");
      return loginResponse;
    }
    final loginResponse =
        UserTokenError(error: "Unexpected Error Not goes to Login fun");
    return loginResponse;
  }
}
