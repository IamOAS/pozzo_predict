class PredictionModel {
  String waterBinderRatio;
  String percAdd;
  String cement;
  String pofa;
  String fineAgg;
  String coarseAgg;
  String water;
  String sio2;
  String al2o3;
  String fe2o3;
  String cao;
  String loi;
  String age;
  String superplasticiser;
  String? ws;
  String? plb;
  String? density;
  String? wd;

  PredictionModel({
    required this.waterBinderRatio,
    required this.percAdd,
    required this.cement,
    required this.pofa,
    required this.fineAgg,
    required this.coarseAgg,
    required this.water,
    required this.sio2,
    required this.al2o3,
    required this.fe2o3,
    required this.cao,
    required this.loi,
    required this.age,
    required this.superplasticiser,
    this.ws,
    this.plb,
    this.density,
    this.wd,
  });

  Map<String, dynamic> toJson() {
    return {
      'w/b_ratio': double.tryParse(waterBinderRatio)!,
      'perc_add': double.tryParse(percAdd)!,
      'cement': double.tryParse(cement)!,
      'pofa': double.tryParse(pofa)!,
      'fine_agg': double.tryParse(fineAgg)!,
      'coarse_agg': double.tryParse(coarseAgg)!,
      'water': double.tryParse(water)!,
      'SiO2': double.tryParse(sio2)!,
      'Al2O3': double.tryParse(al2o3)!,
      'Fe2O3': double.tryParse(fe2o3)!,
      'CaO': double.tryParse(cao)!,
      'loi': double.tryParse(loi)!,
      'age': double.tryParse(age)!,
      'superplasticiser': double.tryParse(superplasticiser)!,
      'w/s': double.tryParse(water)! / double.tryParse(fineAgg)!,
      'pl/b': double.tryParse(superplasticiser)! / (double.tryParse(cement)! + double.tryParse(pofa)!),
      'density': double.tryParse(cement)! + double.tryParse(pofa)! + double.tryParse(fineAgg)! + double.tryParse(coarseAgg)!,
      'w/d': double.tryParse(water)! / (double.tryParse(cement)! + double.tryParse(pofa)! + double.tryParse(fineAgg)! + double.tryParse(coarseAgg)!),
    };
  }
}
