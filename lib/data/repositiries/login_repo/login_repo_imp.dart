import 'dart:developer';

import 'package:base_app/data/errors/failure.dart';
import 'package:base_app/data/models/login_response_model.dart';
import 'package:base_app/data/repositiries/login_repo/login_repo.dart';
import 'package:base_app/data/services/api_client.dart';
import 'package:dartz/dartz.dart';

import '../../services/logger_service.dart';

class LoginRepoImp implements LoginRepo {
  final ApiClient apiClient;
  final LoggerService loggerService;

  LoginRepoImp({
    required this.apiClient,
    required this.loggerService,
  });

  @override
  Future<Either<String, LoginResponse>> loginUser({required String userName,
    required String password,
      required String applicationId}) async {
    try {
      return Right(await apiClient.logInUser(userName: userName, password: password, applicationId: applicationId));
    }  catch (e) {
     log('Error type in repo is ${e.runtimeType}');
      String errorMessage = handleExceptions(e);
      loggerService.errorLogs('Error message is $errorMessage');
      return Left(errorMessage);
    }
  }
}
