import 'package:pozzo_predict/core/models/prediction_model.dart';
import 'package:pozzo_predict/core/models/prediction_response_model.dart';
import 'package:pozzo_predict/core/utils/exports.dart';

class HomeViewModel extends BaseViewModel {
  double? prediction() => predictionService.prediction;

  Future<bool?> getPrediction({required PredictionModel predictionModel, required BuildContext context}) async {
    ResponseModel<PredictionResponseModel> response = await runBusyFuture(
      predictionService.getPrediction(predictionModel: predictionModel),
      throwException: true,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      predictionService.prediction = response.data?.prediction;
      notifyListeners();

      return true;
    } else {
      void showAlert() async {
        await customAlertDialog(
          context: context,
          message: response.error?.message ?? 'Something went wrong. Please try again later!',
        );
      }

      showAlert();
    }

    return null;
  }
}
