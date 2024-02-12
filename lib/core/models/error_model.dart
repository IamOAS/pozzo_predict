class ErrorModel {
  int? statusCode;
  String? message;

  ErrorModel({this.statusCode, this.message});

  String toJson() {
    return '{errorCode: $statusCode, message: $message}';
  }

  factory ErrorModel.fromJson(dynamic data) {
    return ErrorModel(
      statusCode: int.tryParse(data['errorCode']) ?? 000,
      message: data['message']?.toString() ?? 'Something went wrong. Please try again later.',
    );
  }
}
