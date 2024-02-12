import 'package:pozzo_predict/core/utils/exports.dart';

final Dio dio = Dio(_dioBaseOptions);
final BaseOptions _dioBaseOptions = BaseOptions(
  baseUrl: 'https://pozzo-predict-data.onrender.com',
  receiveDataWhenStatusError: true,
  sendTimeout: const Duration(seconds: 30),
  connectTimeout: const Duration(seconds: 30),
  receiveTimeout: const Duration(seconds: 30),
);

class NetworkService {
  // post request
  Future<Response> postData({required String postDataUrl, Object? data}) async {
    try {
      Response<dynamic> response = await dio.post(
        postDataUrl,
        data: data,
      );

      return response;
    } on DioException catch (e) {
      return errorService.handleError(e);
    }
  }
}
