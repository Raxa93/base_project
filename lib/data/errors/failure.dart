import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

String  handleExceptions(dynamic error) {
  String errorMessage;

  switch (error.runtimeType) {
    case SocketException:
      errorMessage = 'Internet is not stable,Please try again';
      break;
    case DioException:
      var dioException = error as DioException;
      switch (dioException.type) {
        case DioExceptionType.cancel:
          errorMessage = 'Request Cancelled,Please Try Again';
          break;
        case DioExceptionType.connectionTimeout:
          errorMessage = 'Connection Timeout,Please Try Again';
          break;
        case DioExceptionType.unknown:
          errorMessage = 'Something Went Wrong,Please Try Again';
          break;
        case DioExceptionType.receiveTimeout:
          errorMessage = 'Receive Timeout,Please Try Again';
          break;
        case DioExceptionType.badResponse:
          int? statusCode = dioException.response?.statusCode;
          log('Status code is $statusCode');
          switch (statusCode) {
            case 400:
              errorMessage = 'Bad Credentials,Please Try Again';
              break;
            case 401:
              errorMessage = 'Unauthorized,Please Try Again';
              break;
            case 403:
              errorMessage = 'Forbidden,Please Try Again';
              break;
            case 404:
              errorMessage = 'Resource Not Found,Please Try Again';
              break;
            case 500:
            case 501:
            case 502:
              errorMessage = 'Server Error,Please Try Again';
              break;
            default:
              errorMessage = 'Something Went Wrong,Please Try Again';
              break;
          }
          break;
        case DioExceptionType.sendTimeout:
          errorMessage = 'Send Timeout,Please try again';
          break;
        default:
          errorMessage = 'Something Went Wrong,Please Try Again';
          break;
      }
      break;
    default:
      errorMessage = 'Something Went Wrong,Please Try Again';
      break;
  }

  return errorMessage;
}
