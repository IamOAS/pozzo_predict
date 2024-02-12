import 'package:get_it/get_it.dart';
import 'package:pozzo_predict/core/services/auth_service.dart';
import 'package:pozzo_predict/core/services/error_service.dart';
import 'package:pozzo_predict/core/services/network_service.dart';
import 'package:pozzo_predict/core/services/prediction_service.dart';
import 'package:stacked_services/stacked_services.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<NavigationService>(
    () => NavigationService(),
  );

  locator.registerLazySingleton<AuthService>(
    () => AuthService(),
  );

  locator.registerLazySingleton<NetworkService>(
    () => NetworkService(),
  );

  locator.registerLazySingleton<ErrorService>(
    () => ErrorService(),
  );

  locator.registerLazySingleton<PredictionService>(
    () => PredictionService(),
  );
}

final NavigationService navigationService = locator<NavigationService>();
final AuthService authService = locator<AuthService>();
final NetworkService networkService = locator<NetworkService>();
final ErrorService errorService = locator<ErrorService>();
final PredictionService predictionService = locator<PredictionService>();
