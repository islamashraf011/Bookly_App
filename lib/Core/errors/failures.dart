// Abstract Class : Means Class Without any copy of it
import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout With Api Server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('incorrect certificate , Please Try Again');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request is Cancelled , Please Try Again');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection , Please Try Again');

      case DioExceptionType.unknown:
        return ServerFailure('UnExpected Error , Please Try Again');
      default:
        return ServerFailure(
          'There was an Error , Please Try Again Later',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        'Request Not Found , Try Again Later',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        'Internal Server Error , Try Again Later',
      );
    } else {
      return ServerFailure(
        'There was an Error , Please Try Again Later',
      );
    }
  }
}
