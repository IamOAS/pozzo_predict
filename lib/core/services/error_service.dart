import 'package:pozzo_predict/core/utils/exports.dart';

class ErrorService {
  dynamic requestResponse({String? message, String? errorCode, String? errorfield, dynamic data}) {
    return {
      'message': message ?? 'Something went wrong. Please try again later!',
      'errorCode': errorCode ?? '000',
      'errorField': errorfield ?? 'null',
      'data': data,
    };
  }

  Response handleError(DioException? e) {
    Response? response;

    switch (e?.type) {
      case DioExceptionType.cancel:
        response = Response(
          data: requestResponse(
            message: 'Request cancelled!',
          ),
          requestOptions: RequestOptions(path: ''),
        );
        break;
      case DioExceptionType.connectionError:
        response = Response(
          data: requestResponse(
            message: 'Please check your network connection!',
          ),
          requestOptions: RequestOptions(path: ''),
        );
        break;
      case DioExceptionType.connectionTimeout:
        response = Response(
          data: requestResponse(
            message: 'Network connection timed out!',
          ),
          requestOptions: RequestOptions(path: ''),
        );
        break;
      case DioExceptionType.receiveTimeout:
        response = Response(
          data: requestResponse(
            message: 'Something went wrong. Please try again later!',
          ),
          requestOptions: RequestOptions(path: ''),
        );
        break;
      case DioExceptionType.sendTimeout:
        response = Response(
          data: requestResponse(
            message: 'Something went wrong. Please try again later!',
          ),
          requestOptions: RequestOptions(path: ''),
        );
        break;
      case DioExceptionType.unknown:
        if (e?.error is SocketException) {
          response = Response(
            data: requestResponse(
              message: 'Please check your network connection!',
            ),
            requestOptions: RequestOptions(path: ''),
          );
        } else if (e?.error is HttpException) {
          response = Response(
            data: requestResponse(
              message: 'Network connection issue. Please try again later!',
            ),
            requestOptions: RequestOptions(path: ''),
          );
        } else if (e?.error is TimeoutException) {
          response = Response(
            data: requestResponse(
              message: 'Network connection timed out!',
            ),
            requestOptions: RequestOptions(path: ''),
          );
        }
        break;
      default:
        if (e?.response!.data.runtimeType == String && (e != null && e.error.toString().contains('404'))) {
          response = Response(
            data: requestResponse(
              data: e.response?.data,
              message: 'An error occurred. Please try again!',
              errorCode: '404',
            ),
            requestOptions: RequestOptions(path: ''),
          );
        } else if (e?.response?.data.runtimeType == String && (e != null && e.error.toString().contains('400'))) {
          try {
            response = Response(
              data: requestResponse(
                data: e.response?.data,
                message: e.response?.data['message'] ?? 'An error occurred. Please try again!',
                errorfield: e.response!.data['errorField'] ?? 'null',
                errorCode: '400',
              ),
              requestOptions: RequestOptions(path: ''),
            );
          } catch (e) {
            response = Response(
              data: requestResponse(
                message: 'An error occurred. Please try again!',
                errorCode: '400',
              ),
              requestOptions: RequestOptions(path: ''),
            );
          }
        }
    }
    return response ??
        Response(
          requestOptions: RequestOptions(path: ''),
        );
  }
}
