

import 'package:dio/dio.dart';

class Utils{



  static Dio getDio(
      // String? fcmToken, String? deviceID
      ) {
    Dio dio =  Dio();
    dio.options.connectTimeout = const Duration(seconds: 10); //15s
    dio.options.receiveTimeout = const Duration(seconds: 10); //15s
    // dio.options.headers["X-DEVICE-ID"] = fcmToken;
    // dio.options.headers["X-DEVICE-GOOGLE-TOKEN"] = deviceID;
    // dio.interceptors.add(LogInterceptor());

    return dio;
  }


}