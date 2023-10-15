import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error');
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure('respone is bad');
      case DioExceptionType.cancel:
        return ServerFailure('Request to api server was canceled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error ,Please try again');

      default:
        return ServerFailure('There was an error try agin');
    }
  }
}
