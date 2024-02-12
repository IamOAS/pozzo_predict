import 'package:pozzo_predict/core/models/prediction_model.dart';
import 'package:pozzo_predict/core/models/prediction_response_model.dart';
import 'package:pozzo_predict/core/utils/exports.dart';

class PredictionService {
  double? prediction;

  Future<ResponseModel<PredictionResponseModel>> getPrediction({required PredictionModel predictionModel}) async {
    try {
      Response<dynamic>? response = await networkService.postData(
        postDataUrl: 'https://pozzo-predict-data.onrender.com/predict',
        data: predictionModel.toJson(),
      );

      final int? statusCode = response.statusCode;

      if (statusCode == 200 || statusCode == 201) {
        PredictionResponseModel predictionResponseModel = PredictionResponseModel.fromJson(response.data);

        return ResponseModel<PredictionResponseModel>(
          valid: true,
          statusCode: statusCode,
          message: response.statusMessage,
          data: predictionResponseModel,
        );
      }

      return ResponseModel<PredictionResponseModel>(
        error: ErrorModel.fromJson(response.data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
