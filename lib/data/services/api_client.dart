import 'dart:developer';

import 'package:base_app/data/errors/failure.dart';
import 'package:base_app/data/models/login_response_model.dart';
import 'package:base_app/presentation/constants/app_contants.dart';
import 'package:dio/dio.dart';

import '../../presentation/utilities/utils.dart';

abstract class ApiClient {
  final Dio dio = Dio();

  Future<LoginResponse> logInUser(
      {required String userName, required String password, required String applicationId});
}

class ApiClientImp implements ApiClient {
  @override
  Dio get dio => Utils.getDio();

  @override
  Future<LoginResponse> logInUser({required String userName, required String password, required String applicationId}) async {
    var requestData = {
      'userName': userName,
      'password': password,
      'applicationId': applicationId,
    };

    var response = await dio.post(
        AppUrls.loginUrl,
        data: requestData,
        options: Options(
            headers: {
              'Content-Type': 'application/json'
            }
        )
    ) .catchError((error) {
      throw error;
    });
    return LoginResponse.fromJson(response.data);
  }


}


