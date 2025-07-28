import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate timeout with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Canceld timeout with ApiServer");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error with ApiServer");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SockerException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Oops There is an error, try again later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not founded');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , Please Try Later');
    } else {
      return ServerFailure('Oops There is an error, try again later!');
    }
  }
}
