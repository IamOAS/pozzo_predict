import 'package:get_it/get_it.dart';
import 'package:pozzo_predict/core/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<NavigationService>(
    () => NavigationService(),
  );

  locator.registerLazySingleton<AuthService>(
    () => AuthService(),
  );
}

final NavigationService navigationService = locator<NavigationService>();
final AuthService authService = locator<AuthService>();
