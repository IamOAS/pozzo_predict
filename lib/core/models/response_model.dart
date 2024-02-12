import 'package:pozzo_predict/core/models/error_model.dart';

class ResponseModel<T> {
  int? statusCode = 0;
  ErrorModel? error = ErrorModel();
  bool? valid = false;
  String? message;
  String? token;
  T? data;

  ResponseModel({
    this.valid,
    this.message,
    this.statusCode,
    this.token,
    this.error,
    this.data,
  });

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "valid": valid,
        "message": message,
        "token": token,
        "data": data,
        "error": error?.toJson(),
      };
}
