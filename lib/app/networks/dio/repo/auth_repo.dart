import 'package:dio/dio.dart';
import 'package:speedy_feast/app/networks/dio/dio_client.dart';
import 'package:speedy_feast/app/networks/dio/endpoints.dart';
import 'package:speedy_feast/app/networks/models/user_signup_res.dart';
import 'package:speedy_feast/app/networks/models/user_token_error.dart';

class AuthRepo {
  final DioClient dioClient = DioClient(Dio());

  Future<UserTokenError?> AuthReRes(UserSignupRes userSignupRes) async {
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
}
