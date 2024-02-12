class PredictionResponseModel {
  double prediction;

  PredictionResponseModel({
    required this.prediction,
  });

  factory PredictionResponseModel.fromJson(Map<String, dynamic> json) => PredictionResponseModel(
        prediction: json["prediction"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "prediction": prediction,
      };
}
