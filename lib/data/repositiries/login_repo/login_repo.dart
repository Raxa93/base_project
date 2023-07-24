
import 'package:base_app/data/models/login_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo{

   Future<Either<String,LoginResponse>> loginUser({required String userName, required String password,required String applicationId});


}