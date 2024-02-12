import 'package:pozzo_predict/core/utils/exports.dart';

class ResultViewModel extends BaseViewModel {
  double? prediction() => predictionService.prediction;
}
