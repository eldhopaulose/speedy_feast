import 'package:speedy_feast/app/networks/dio/dio_client.dart';

enum EndPoints {
  login,
  signup,
  home,
}

extension EndPointData on EndPoints {
  String path() {
    String path = "";
    switch (this) {
      case EndPoints.signup:
        path = "api/user/signup";
      case EndPoints.login:
        path = "api/user/login";
      case EndPoints.home:
        path = "api/food";
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.signup:
        type = ReqType.POST;
      case EndPoints.login:
        type = ReqType.POST;
      case EndPoints.home:
        type = ReqType.GET;
    }
    return type;
  }

  bool hasToken() {
    bool hasToken = false;
    switch (this) {
      case EndPoints.login:
        hasToken = false;
        break;
      case EndPoints.signup:
        hasToken = false;
      default:
        hasToken = true;
        break;
    }
    return hasToken;
  }
}
